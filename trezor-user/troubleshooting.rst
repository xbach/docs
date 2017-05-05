Troubleshooting
===============

Here you can find most common issues and how to solve them.


TREZOR Bridge (trezord)
-----------------------

Bridge reinstall problem (Windows)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you see following

::

    Output folder: C:\Program Files (x86)\TREZOR Bridge 
    Can't write: C:\Program Files (x86)\TREZOR Bridge\libcrypto-10.dll

Please uninstall the previous version of TREZOR Bridge first and delete all remaining files, then install the new version.


TREZOR Wallet stops responding:
-------------------------------

1. Unplug your TREZOR
2. Refresh `TREZOR Wallet <https://wallet.trezor.io>`_ or try `TREZOR Wallet Beta <https://beta-wallet.trezor.io>`_
3. Plug your TREZOR back in

You can unplug your TREZOR at any time except during the update procedure.  There is no risk of data loss.


TREZOR Wallet shows broken or confusing account information
-----------------------------------------------------------

1. Run :doc:`Forget device<forgetting>`
2. Unplug your TREZOR
3. Plug your TREZOR back in


Firmware update went wrong
--------------------------


Unofficial firmware
^^^^^^^^^^^^^^^^^^^

::

    WARNING!

    Unofficial firmware

1. :doc:`Run the update again<updatingfirmware>`.
2. Done. Your TREZOR should now work again.


Broken firmware
^^^^^^^^^^^^^^^

::

    Firmware appears to be broken.

    Unplug your TREZOR and contact our support.

1. :doc:`Run the update again<updatingfirmware>`.
2. Done.  Your TREZOR should now work again.
3. If it still doesn't work please try different USB cable and proceed to step 1.


Windows OS: TREZOR Wallet doesn't recognize TREZOR after update to firmware 1.4.0 or higher
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the system does not recognize the device after the firmware update, go to the Device Manager and force the drivers to update. With FIDO implemented, Windows regards TREZOR as a new device, and sometimes the drivers do not update automatically.

Here are some instructions how to open "Device manager" and update necessary drivers depending on the system you're using. TREZOR is usually reported as *USB Composite Device* in Device manager

1. Press Win + R to open command line
2. Type: devmgmt.msc and hit Enter
3. Device manager window will appear
4. Find "Other devices" and click on it with right button
5. Choose "Update driver software"

Windows 8 & 10:

1. Press Win + X to open command line
2. Type: devmgmt.msc and hit Enter
3. Device manager window will appear
4. Find "Other devices" and click on it with right button
5. Choose "Update driver software"

In one rare case this didn't help and it has been solved in the following way:

1. Go to Control Panel / All Control Panel Items / Devices and Printers
2. Click on it and check if you see message: "Needs troubleshooting"
3. Perform the troubleshooting
4. Restart the computer


TREZOR Bootloader 1.3.0: How to update firmware
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There is a small issue with TREZOR Bootloader 1.3.0, which prevents the device from being properly recognized if a user holds the device buttons pressed for a longer-than-necessary amount of time. The problem can be resolved by pressing the buttons only for a short amount of time (click) when entering Bootloader mode.

1. Open https://wallet.trezor.io. 
2. Plug micro-USB into TREZOR.
3. Align USB-A to a port on your computer. 
4. Plug the USB-A into your computer. At the same time, click both buttons on your TREZOR.
5. The device should boot up in Bootloader mode, and the computer should recognize it.
6. If the computer does not recognize your TREZOR, please try again. Timing is essential.
7. Windows users, please check Device Manager if TREZOR is not recognized repeatedly.



If you encountered any other problem or suggested solutions didn't solve your issue, please contact our `Customer Support <mailto:support@trezor.io>`_.

