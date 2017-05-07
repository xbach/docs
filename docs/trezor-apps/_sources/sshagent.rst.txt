SSH Agent
=========

.. image:: images/openssh_logo.png

Thanks to the great work by `Roman Zeyde <https://github.com/romanz>`_ TREZOR firmware version 1.3.4 and higher supports NIST P-256 elliptic curve. This addition does not affect Bitcoin at all, but it means you can now use TREZOR for SSH login to your servers which support it (OpenSSH 5.7 or newer is needed).

What is OpenSSH?
----------------

OpenSSH is the premier connectivity tool for remote login with the SSH protocol. It encrypts all traffic to eliminate eavesdropping, connection hijacking, and other attacks. In addition, OpenSSH provides a large suite of secure tunneling capabilities, several authentication methods, and sophisticated configuration options. 
  
Thanks to **TREZOR SSH Agent** administrators can now install this OpenSSH compatible agent easily and enjoy passwordless and secure authentication to their servers.

Resources
^^^^^^^^^

- `Website <http://www.openssh.com/>`_
- `Souce code <https://github.com/romanz/trezor-agent>`_
- `Support (email) <mailto:support@trezor.io>`_

TREZOR User Manual
------------------

Setting up TREZOR SSH Agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^

In order to use this exciting feature upgrade your TREZOR firmware and follow these steps:

1. install trezor agent on your client machine:

    $ sudo pip install trezor_agent

2. generate public key using trezor-agent (enter scrambled PIN like you would in TREZOR Wallet)

    $ trezor-agent user@example.com

3. log in to your server as usual and copy the row containing the ecdsa magic from the previous step into ~/.ssh/authorized_keys file on your server

4) from now on you can log in to your server using trezor using the following command:

    $ trezor-agent -c user@example.com

..note:: #1: The generated keys depend on the user@example.com parameter, so no two servers/users share the same key.

..note:: #2: This method can also be used for git push or other mechanisms that are using SSH as their communication protocol:

    $ trezor-agent user@example.com git push
