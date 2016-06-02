Emergency situations
====================

Sometimes it can happen, that your recovery seed gets compromised or your TREZOR gets lost. Do not worry, we have prepared emergency scenarios for such cases. In any case please read the :doc:`Security Best Practices<securitybestpractices>` and seriously think about `using passphrase <http://doc.satoshilabs.com/trezor-user/advanced_settings.html#using-passphrase-encrypted-seeds>`_ for the new setup before proceeding any further.

Now let's have a look what it your situation and what you can do.


You have multiple TREZOR devices
--------------------------------

This is the easiest and safest option. If you have two or more devices available, just:

* `Set up <http://doc.satoshilabs.com/trezor-user/settingup.html>`_ another TREZOR (or use one which is already initialized).
* Create required setup (think about how many accounts / addresses you will need to transfer the funds).
* Check the neccesary receiving address(es) with `Show on TREZOR <http://doc.satoshilabs.com/trezor-user/receivingpayments.html#show-on-trezor>`_.
* Transfer the funds from device with original recovery seed into the other device.
* `Wipe <http://doc.satoshilabs.com/trezor-user/advanced_features.html#wiping-your-trezor-device>`_ the device with original recovery seed.

You can set it up again anytime you need.



You have one TREZOR device and recovery seed IS available
---------------------------------------------------------

For this option you should make sure your computer has not been compromised with keylogger or any other malware/virus. Recovery process is pretty safe even if your computer is compromised however it would weaken your new seed against potential brute-force attack.

* Make sure you have the original recovery seed available.
* `Wipe <http://doc.satoshilabs.com/trezor-user/advanced_features.html#wiping-your-trezor-device>`_ the device.
* `Set it up <http://doc.satoshilabs.com/trezor-user/settingup.html>`_ again and generate new recovery seed (do NOT save your seed digitally!).
* Create required setup (think about how many accounts / addresses you will need to transfer the funds).
* Check the neccesary receiving address(es) with `Show on TREZOR <http://doc.satoshilabs.com/trezor-user/receivingpayments.html#show-on-trezor>`_ and write it / them down.
* Wipe the device again.
* `Recover <http://doc.satoshilabs.com/trezor-user/recovery.html>`_ your original recovery seed.
* Transfer your funds to address(es) generated from the new recovery seed.
* Wipe the device again.
* Recover your new recovery seed.
* Enjoy ultimate TREZOR security again.


You have one TREZOR device and recovery seed IS NOT available
-------------------------------------------------------------

Recommended for situations where you have TREZOR available, but not your seed!

There is variety of options with variety of security levels. You can use desktop / mobile / web wallet or even exchange or another hardware wallet. We do recommend to use reliable desktop wallet such as `Electrum <https://www.electrum.org>`_ as it's proven to be safe, it's simple to use for begginers while also offers plenty of features for advanced users.

* Install / Sign up / Register / Initialize 3rd party wallet.
* Transfer funds from original recovery seed into the new wallet.
* `Wipe <http://doc.satoshilabs.com/trezor-user/advanced_features.html#wiping-your-trezor-device>`_ TREZOR with original recovery seed.
* `Set it up <http://doc.satoshilabs.com/trezor-user/settingup.html>`_ again and generate new recovery seed (do NOT save your seed digitally!).
* Create required setup (think about how many accounts / addresses you will need to transfer the funds).
* Check the neccesary receiving address(es) with `Show on TREZOR <http://doc.satoshilabs.com/trezor-user/receivingpayments.html#show-on-trezor>`_ and write it / them down.
* Transfer funds from the 3rd party wallet into your newly setup TREZOR.
* Enjoy ultimate TREZOR security again.


You have no TREZOR device and recovery seed IS available
--------------------------------------------------------

This can happen if you lost your TREZOR device however you have your recovery seed stored safely. As a first thing you should order `new TREZOR device <https://www.buytrezor.com>`_. Consider ordering two devices directly to have one for backup in case something similar happens next time! 

After you are done with that there can be three possible scenarios:


**1. Your TREZOR was protected by passphrase and you DON'T need to access your funds before the new device arrives**

* Wait for the new device to arrive.
* Once it arrives, `set it up  <http://doc.satoshilabs.com/trezor-user/settingup.html>`_.
* Create required setup (think about how many accounts / addresses you will need to transfer the funds).
* Check the neccesary receiving address(es) with `Show on TREZOR <http://doc.satoshilabs.com/trezor-user/receivingpayments.html#show-on-trezor>`_.
* Install / Sign up / Register / Initialize 3rd party wallet which supports recovery of the TREZOR seed (please refer to `TREZOR Apps <http://doc.satoshilabs.com/trezor-apps/index.html>`_ for more information).
* Transfer your funds from original recovery seed to address(es) generated from the new recovery seed.
* Enjoy ultimate TREZOR security again.


**2. Your TREZOR was protected by passphrase and you DO need to access your funds before the new device arrives**

* Install / Sign up / Register / Initialize 3rd party wallet which supports recovery of the TREZOR seed and passphrase (please refer to `TREZOR Apps <http://doc.satoshilabs.com/trezor-apps/index.html>`_ for more information).
* Use it as you need until your new TREZOR arrives.
* `Set up <http://doc.satoshilabs.com/trezor-user/settingup.html>`_ new TREZOR device and generate new recovery seed (do NOT save your seed digitally!).
* Create required setup (think about how many accounts / addresses you will need to transfer the funds).
* Check the neccesary receiving address(es) with `Show on TREZOR <http://doc.satoshilabs.com/trezor-user/receivingpayments.html#show-on-trezor>`_.
* Transfer your funds from original recovery seed to address(es) generated from the new recovery seed.
* Enjoy ultimate TREZOR security again.


**3. Your TREZOR was NOT protected by passphrase**

* Install / Sign up / Register / Initialize 3rd party wallet which supports recovery of the TREZOR seed (please refer to `TREZOR Apps <http://doc.satoshilabs.com/trezor-apps/index.html>`_ for more information).
* Generate new wallet with new recovery seed.
* Create required setup (think about how many accounts / addresses you will need to transfer the funds).
* Transfer your funds from original TREZOR recovery seed to address(es) generated from the new 3rd party wallet recovery seed.
* Use it as you need until your new TREZOR arrives.
* `Set up <http://doc.satoshilabs.com/trezor-user/settingup.html>`_ new TREZOR device and generate new recovery seed (do NOT save your seed digitally!).
* Create required setup (think about how many accounts / addresses you will need to transfer the funds).
* Check the neccesary receiving address(es) with `Show on TREZOR <http://doc.satoshilabs.com/trezor-user/receivingpayments.html#show-on-trezor>`_.
* Transfer your funds from 3rd party wallet recovery seed to address(es) generated from the new TREZOR recovery seed.
* Enjoy ultimate TREZOR security again.
