Setting up your TREZOR device
=============================

The TREZOR works with almost any computer that has a USB port or with Android devices with USB Host support. 

There are four options to initialize the TREZOR device. 

1. Online at TREZOR Wallet
--------------------------

To allow the `TREZOR Wallet <https://wallet.trezor.io>`_ wallet to communicate with the TREZOR you need to install a piece of software called the TREZOR Bridge.  If you go to the `TREZOR Wallet <https://wallet.trezor.io>`_ website you should see a page with a Download link.  Download the TREZOR bridge and follow the instructions on the screen.

.. note:: We also provide a `Chrome extension <https://chrome.google.com/webstore/detail/jcjjhjgimijdkoamemaghajlhegmoclj>`_, which works on all platforms. However, Linux users need to perform additional configuration of their system, please see :doc:`Setting up Chrome extension on Linux <settingupchromeonlinux>`.

Once you've got the TREZOR Bridge or TREZOR Chrome extension installed go to `TREZOR Wallet <https://wallet.trezor.io>`_ again.  

2. TREZOR Chrome extension
--------------------------

`TREZOR Chrome extension <https://chrome.google.com/webstore/detail/jcjjhjgimijdkoamemaghajlhegmoclj>`_ can be used cross platforms, however only with Chrome based browsers. Please note that Linux users need to perform additional configuration of their system, please see :doc:`Setting up Chrome extension on Linux <settingupchromeonlinux>`. After you successfully install the extension please open the `Apps tab <chrome://apps/>`_ and double click on the TREZOR Extension.


3. TREZOR Manager for Android
-----------------------------

You can also set up TREZOR with our `TREZOR Manager <https://play.google.com/store/apps/details?id=io.trezor.app>`_, which can be found in Google Play store. Your phone has to support the USB Host (USB On The Go - OTG) and you need to use the OTG cable (you can buy one as a TREZOR accessory directly at `TREZOR Shop <https://shop.trezor.io/>`_.

Please see our step by step manual :doc:`how to set up TREZOR with TREZOR Manager for Android <android>`.


4. Offline with Python tools
----------------------------

This procedure is only for advanced users! We do not recommend to use it unless you have some experience with command line and Python. If you wish to proceed further anyway please visit our `Github repository <https://github.com/trezor/python-trezor>`_.


TREZOR Setup
------------

The process of actual device setup is pretty much the same when using TREZOR Wallet, Chrome extension or TREZOR Manager for Android. Let's go through it when setting up at TREZOR Wallet (wallet.trezor.io).

This time you should see a web page welcoming you and asking for a device label:

.. image:: images/welcometosetup.png

Enter a new name for your TREZOR device and press Continue.  You should see the first seed word.  Now go on to :doc:`Filling out your Recovery Card <fillingoutyourrecoverycard>`.

.. note:: There are also several :doc:`Advanced settings <advanced_settings>` that you can configure.

.. toctree::
   :maxdepth: 2

   settingupchromeonlinux
   fillingoutyourrecoverycard
   basic_settings
   enteringyourpin


.. You don't need to use the `TREZOR Wallet <https://wallet.trezor.io>`_ webservice if you want to use your TREZOR device.  You can use any bitcoin software that supports TREZOR including:

 - Electrum
 - Multibit
