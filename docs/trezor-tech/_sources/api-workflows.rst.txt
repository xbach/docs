API Workflows
=============

In general, the API implements a simple request-response protocol.
The computer sends a request to the device and the device sends back a
response.  The response can be a simple `Success` message, a `Failure`
message, or an answer to the request giving the requested data.
Moreover, the response can be a request from the device to the
computer, e.g., for entering the PIN, the passphrase or giving some
other information.  In that case the computer should send the
corresponding `Ack` packet to answer the request and wait for another
response.

Initialize/Features
-------------------

As first message, the computer should send an empty `Initialize`
packet and expect a `Features` packet as response.  The `Initialize`
packet will cause the device to stop what it is currently doing and
should work at any time.  Thus, it can also be used to recover from
previous errors.

Button meta-workflow
--------------------

If the device requires the user to press a button, it will reply with a
`ButtonRequest` to the computer.  The computer should immediately send
a `ButtonAck` acknowledging the request.  But it should also display
an indication to the user that it should follow the instruction on the
device.  The field `code` in the `ButtonRequest` message explains what
type of request the user should acknowledge with a button.

If the user never presses the button, there will never be a reply to
the `ButtonAck` message.  The computer can use `Cancel` to abort the
current operation.  This should result in a `Failure` response.

PinMatrix meta-workflow
-----------------------

If the device requires the user to unlock the device with a PIN, it
will reply with a `PinMatrixRequest`.  The field `type` gives some
explanation what PIN is required (current pin, new pin, or
confirmation of new pin).  The computer should display an empty pin
matrix and let the user enter the pin.  The computer should encode the
PIN as if the numbers are ordered like they are on the numeric
keypad.  The encoded PIN should then be send with a `PinMatrixAck`
message.

Passphrase meta-workflow
------------------------

If the device requires the user to enter the passphrase, it will reply
with a `PassphraseRequest`.  The computer should ask the user for the
passphrase and send it in clear text with a `PassphraseAck` message.

GetAddress
----------

The message `GetAddress` (send from the computer to the device) serves
two purposes.  It can be used to get a valid address or to display the
address on the device.  The field `address_n` gives the bip-32 path to
the address.  The field `coin_name` should be set to some supported
coin (see the `Feature` message for a list of supported coins).  For
multisig addresses `multisig` must be filled out with all
participating master public keys and there bip-32 path.  The
`script_type` field has the same meaning as for transaction inputs
when signing:

- `SPENDADDRESS` (standard p2pkh address)
- `SPENDMULTISIG` (p2sh multisig address)
- `SPENDWITNESS` (native segwit p2wpkh or multisig p2wsh address)
- `SPENDP2SHWITNESS` (segwit encapsulated in a p2sh address)

If `show_display` is set the address is displayed to the user.  In any
case, it is also sent to the computer with an `Address` response.
  
GetPublicKey
------------

The message `GetPublicKey` can be used to get a bip-32 master public
key from the trezor or to display it to the user. The field
`address_n` gives the bip-32 path to the master key.  The field
`ecdsa_curve_name` can be used to get ed25519 or nist256p1 public
keys.

SignTx
------

Signing a transaction is a little bit complicated.  The reason is that
transactions can be several hundred kilobytes in size, but TREZOR has
only 64 kilobytes memory.  So it is the task of the computer to split
the transactions in small pieces and send only those pieces that
TREZOR requested.  The general workflow is given below

.. image:: images/signtx_workflow.png

The computer starts the transaction signing process by sending a
`SignTx` message. From then on, the device drives all further
communications by sending requests to the computer until it finally
sends a `TxRequest` with `request` set to `TXFINISHED`.  This
final message should not be acknowledged by the computer.

The `SignTx` message contains only the meta data of the transaction
that should be signed, i.e., the number of inputs and outputs, the
coin name, the version number, and `lock_time` (only for pre-signed
time locked transactions).  If the device was not unlocked before, it
will respond with the usual `PinMatrixRequest` and `PasswordRequest`
messages to authenticate the user.  See the corresponding sections
above.  It may also send a `ButtonRequest` at any time to indicate
that the user should confirm a transaction output or the total fee.

Then the main process begins and Trezor will respond with `TxRequest`
messages, which should be answered by `TxAck` message.  A `TxRequest`
message has up to three parts.

1. Parts of the signed transactions.
2. A signature for one of the inputs.
3. A request for one piece of the new transaction or a previous transaction.

If the field `serialized.serialized_tx` is set, it contains a chunk of
the signed transaction in serialized format.  The chunks are returned
in the right order and just concatenating all returned chunks will
result in the signed transaction.

If the field `serialized.signature` is set, it contains a signature
for one of the inputs.  The signatures are returned in the same order
as they appear in the serialized transactions.  I.e., the non-segwit
signatures come before the segwit signatures, since the latter are
part of the witness, which is serialized at the end.  Apart from that,
the signatures are returned in the order the inputs appear in the
transaction.  The signatures are not really needed, as they are
already in the serialized transaction.  They can be useful for
combining multisig signatures without having to parse the transactions
again.

If the field `request` equals `TXFINISHED`, this message contained the
last chunk of the transaction.  The signing is finished and the
computer must not reply to this packet.  In any other case, the device
requested some piece of some transaction, which is specified by
`request` and `details`.  This request must be answered by a `TxAck`
package containing the requested piece of data.

If the field `details.tx_hash` is not set, some piece of the
transaction that should be signed is requested. Otherwise, this field
contains the hash of some input transaction and some piece of that
transaction is requested.

For `request = TXMETA`, the fields `tx.version`, `tx.lock_time`,
`tx.inputs_cnt` (number of inputs), and `tx.outputs_cnt` must be
filled.  For ZCash transactions also `tx.extra_data_len` must be
given.  This will only be requested for input transactions (for the
signed transaction it was given in the `SignTx` call).

For `request = TXINPUT`, the field `details.request_index` contains
the number of the input requested (starting with zero).  The reply
must fill the structure `tx.inputs[0]` (there must be exactly one
input in the reply).  Which fields must be set depends on whether
`details.tx_hash` is set (an input of some previous transaction is
requested, that is spend in the new transaction), or whether an input
of the new transaction is requested.  In both cases `prev_hash`,
`prev_index` and `sequence` must be set.  For a previous transaction,
the `script_sig` must be set to the raw signature data.

But if `details.tx_hash` is unset, the data must instead describe the
private key that should be used to sign the input.  This is specified
by `address_n` (the bip-32 path to the private key), `script_type` and
`multisig`.  The field `multisig` is only given for multisig
transactions and contains the master public keys and the derivation
paths for all signers.  The field `script_type` can be

- `SPENDADDRESS` (standard p2pkh address)
- `SPENDMULTISIG` (p2sh multisig address)
- `SPENDWITNESS` (native segwit p2wpkh or multisig p2wsh address)
- `SPENDP2SHWITNESS` (segwit encapsulated in a p2sh address)

Note, that for segwit `script_type` does not distinguish between
multisig or p2wpkh addresses.  Instead the presence of the `multisig`
decides this.  For segwit inputs also the `amount` field must be set
to the amount of satoshis in the input transaction.

For `request = TXOUTPUT`, the field `details.request_index` contains
the number of the output requested (starting with zero).  If
`details.tx_hash` is set, this is an output of a previous transaction
and the `tx.bin_outputs[0]` field must be filled in the `TxAck` reply.
Otherwise, the `tx.outputs[0]` field must be filled.  For change
outputs, the field `address_n` must be filled and `address` must be
omitted.   If the change is multisig, the `multisig` must be
filled and it must use the same extended public keys as all inputs.
For a change address, the `script_type` should be `PAYTOADDRESS`,
`PAYTOMULTISIG`, `PAYTOWITNESS` or `PAYTOP2SHWITNESS` matching the
corresponding cases `SPEND...` for inputs.  For `OP_RETURN` outputs,
set `script_type = PAYTOOPRETURN` and set the `op_return_data` field.
Otherwise `address` should be set to a base58 encoded address and
`script_type` to `PAYTOADDRESS`.  Older firmware required `script_type =
PAYTOSCRIPTHASH` for p2sh addresses, though (and newer firmware still
support this).
	   
SignMessage/VerifyMessage
-------------------------

CipherKeyValue
--------------

ResetDevice
-----------

RecoveryDevice
--------------

LoadDevice
----------

WipeDevice
----------

ApplySettings
-------------

ChangePin
---------
