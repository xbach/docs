TREZOR APIs
=================

There are several ways a developer can connect to TREZOR. This is a brief overview of the approaches, from the more high-level to the more low-level; more detailed documentation is linked in each section.

This is a graph displaying various TREZOR APIs, with some third-party applications colored in gray. `See larger <_images/graph.png>`_

.. image:: images/graph.png

TREZOR Connect
-----

TREZOR Connect is an easy way to add TREZOR functionality to your website. We made a very simple API with already omplemented GUI for most common use-cases:

* Login with TREZOR
* Exporting xpub (public key)
* Signing of a pre-made transaction
* Payment request (creation of a transaction + signing it)

`You can read a detailed information on our github page <https://github.com/trezor/connect>`_, or more general information about the first use-case below:

.. toctree:: 
   :maxdepth: 2

   api-connect


trezor.js
-----

trezor.js is a high-level framework that websites can use in order to communicate with TREZOR devices.

You can use trezor.js in your web app and not communicate with lower transport layers directly; however, the *end user* has to install either trezord or TREZOR Chrome extension, see above.

Unlike with TREZOR Connect, with trezor.js, you still need to implement the GUI and handle the various possible cases yourself.

`See more documentation on the github page <https://github.com/trezor/trezor.js>`_.


TREZOR Chrome extension
----

TREZOR Chrome extension is an alternative way for web apps to talk with TREZOR. The extension communicates with TREZOR via USB directly, and then allows websites to communicate with the extension via Chrome messages.

TREZOR Chrome extension is not intended for direct use by developers - it is still a little low-level, although more high-level than using USB HID directly. You should instead use trezor.js API, that uses the extension.

However, the *end user* of the web app needs to install either trezord or Chrome Extension.

`See more documentation on the github page <https://github.com/trezor/trezor-chrome-extension>`_.


trezord (TREZOR Bridge)
-----

In order for websites, such as our own webwallet myTREZOR, to talk with TREZOR, we developed so-called "bridge", or trezord (short for TREZOR daemon). trezord starts a local webserver, to which both external applications and local applications can communicate.

trezord is not intended for direct use by developers - it is still a little low-level, although more high-level than using USB HID directly. You should instead use trezor.js API, that uses trezord.

However, the *end user* of the web app needs to install either trezord or Chrome Extension.

`See more documentation on the github page <https://github.com/trezor/trezord>`_.


trezor-android
------

.. TODO napsat neco vic, ja o tom nic nevim

You can use Android API in Java in order to use TREZOR in your Android app. Note that the mobile phone needs to support OTG connection and the user needs to have an OTG cable to connect TREZOR to the phone.

`See more documentation on the github page <https://github.com/trezor/trezor-android>`_.


python-trezor
-----

If you want to use TREZOR in your python script or in a desktop app that uses Python, you can use Python API.

`See more documentation on the github page <https://github.com/trezor/python-trezor>`_.


Low-level HID API
------

Developers can directly "talk" to TREZOR using USB HID API and Protobufs.

We recommend this approach only to developers that really know what they are doing (or want to write more high-level TREZOR libraries). Developers need to directly interact with messages to and from TREZOR and have to reimplement workflows, that are already present in the other APIs. 

For more info on low-level API, see:

.. toctree::
   :maxdepth: 2

   api-protobuf

