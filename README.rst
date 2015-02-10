=========================================
OWeZXiTi for eZ Publish documentation
=========================================

.. image:: https://github.com/Open-Wide/OWNewsletter/raw/master/doc/images/Open-Wide_logo.png
    :align: center

:Extension: OW eZ Xiti v1.0
:Requires: eZ Publish 4.x.x (not tested on 3.X)
:Author: Open Wide http://www.openwide.fr

Presentation
============

This extension provides a XiTi handler for eZ Publish.

LICENCE
-------
This eZ Publish extension is provided *as is*, in GPL v2 (see LICENCE).

Installation
============

1. Clone the repository in the extension folder :

.. code-block:: sh

    $ git clone https://github.com/Open-Wide/owezxiti.git extension/owezxiti

2. Enable the extension in the site.ini.append.php :

.. code-block:: php

    ActiveExtensions[]=owezxiti

3. Update the autoload arrays and clear cache :

.. code-block:: sh

    $ bin/php/ezpgenerateautoloads.php --extension
    $ bin/php/ezcache.php --clear-all

Usage
=====

1. Add the xtcore.js JavaScript file given by XiTi to your javascript design folder.

2. Fill in your XiTi options below the site.ini's [SiteSettings] (XitiSd variable already handle http://log so you'll have to put only the id after this info):

.. code-block:: ini

    XitiSd=
    XitiSite=
    XitiN2=

Example :

.. code-block:: ini

    XitiSd=a1234
    XitiSite=123456
    XitiN2=

