Development Corner
===================

I want to participate in implementing TREZOR with my wallet or service.
-----------------------------------------------------------------------

We will be happy talking to you, please contact us at `integration@satoshilabs.com <mailto:integration@satoshilabs.com>`_.


Is it possible to flash the device?
-----------------------------------

Yes, it is. Devices sold by us have a USB bootloader that allows firmware flashing. Upon start, the firmware signature is checked and if it does not match ours a warning is issued. The user can continue at his own risk after pressing the button. This small inconvenience is to increase the security of the end users.

What are the VIDs and PIDs of TREZOR?
-------------------------------------

TREZOR has VID 0x534c and PID 0x0001.

TREZOR 2 uses VID 0x1209 and PID 0x53C1. (TREZOR 2 Bootloader uses PID 0x53C0.) These VIDs/PIDs are assigned by Project `pid.codes <http://pid.codes/>`_.


Where can I find the source codes?
----------------------------------

You can find all the repositories `here <../trezor-tech/resources.html>`_.
