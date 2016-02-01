SatoshiLabs Documentation Tree
==============================

Deployed on http://doc.satoshilabs.com/

Contents
--------

==================== ===========================================================
**tools**            Various Tools Used in the Documentation Process
**trezor-faq**       TREZOR Frequently Asked Questions
**trezor-tech**      TREZOR Technical Manual
**trezor-user**      TREZOR User Manual
==================== ===========================================================

References
----------

Built using Sphinx_ with sphinx_rtd_theme_

.. _Sphinx: https://sphinx-doc.org/
.. _sphinx_rtd_theme: https://github.com/snide/sphinx_rtd_theme/

Building the documentation
------------------------

If you have Docker installed you can run:

    make shell

    make html

Then open up _build/index.html in your favorite web browser.

Alternatively, if you have pip installed, you can run:

    pip install sphinx

    make html

Without any need for Docker.

