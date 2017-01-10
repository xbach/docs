Updating your TREZOR's firmware
===============================

Occasionally when you plug in your TREZOR you may see a banner telling you that you need an update.

.. image:: images/updateneeded.png

That means it is time to update your TREZOR's firmware!

Doing so is easy.

.. important::  Make sure you have your recovery card handy before you begin your update, as you may be required to re-enter your recovery seed after the update has completed.

Without closing the myTREZOR website, unplug your TREZOR.  Now press down both buttons on your TREZOR.  Holding down the buttons, plug your TREZOR back in.  It may help if you hold your TREZOR from the top in a pinching motion.

.. image:: images/clawupdateplugin.jpg

Once you have plugged in your TREZOR you'll see a dialog on the TREZOR Wallet website asking if you want to update.

.. image:: images/doyouwanttoupdate.png

Press "Yes, update"

.. image:: images/trezor-bootloader.jpg

Now press the right button on your TREZOR to confirm the update.  Wait a few minutes while the update runs.  Once it's done you can unplug and replug your TREZOR to finish the update.

.. note:: **Windows Users:** If the system does not recognize the device after the update, go to *Device Manager* and force the drivers to update. With FIDO implemented, Windows regards TREZOR as a new device, and sometimes drivers do not update automatically. For more information please visit our `Troubleshooting <http://doc.satoshilabs.com/trezor-user/troubleshooting.html#windows-os-mytrezorcom-doesnt-recognize-trezor-after-update-to-firmware-140-or-later>`_ section.

.. note:: If the update somehow fails or you accidentally unplug your TREZOR during the update there is no need to worry.  Run the update over again by plugging your TREZOR in with both buttons pressed down.  You will need to :doc:`forget your old device<forgetting>` and run :doc:`TREZOR recovery<recovery>`.
