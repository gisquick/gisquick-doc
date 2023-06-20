.. |logo| image:: ../img/logo.png
   :width: 2em
   |plugin-logo| image:: ../img/publish/plugin-logo.png
   :width: 2em

.. _before-publishing:

================
Before publishing
================

This part of the documentation describes the steps that need to be done before publishing a project from QGIS 
on Gisquick platform.
It is also assumed that the user has a project with the required layers
ready in QGIS and wants to publish it. 

.. _creating-account:

Creating Gisquick account
-------------------------

First of all, a new user account has to be created on a publication
server (for example on Gisquick demo publication server as it is described below).
This can be done by filling in the registration form available at https://demo.gisquick.org/.

.. thumbnail:: ../img/publish/gisquick-new-account-0.png
   :width: 300px

   Registration form for creating a new user account.

After pressing ``CREATE ACCOUNT`` button a confirmation e-mail should
be sent to a given e-mail address.
 
.. thumbnail:: ../img/publish/gisquick-new-account-1.png

   Completion of registration process will be done by pressing
   ``ACTIVATE ACCOUNT`` button.

Afterwards, a new user is notified about successful signing-in.

.. thumbnail:: ../img/publish/gisquick-new-account-2.png
   :width: 300px
   
   A new user account has been successfully created.

After clicking on ``CONTINUE`` button, the new user will be redirected to
the publication server welcome screen.

.. thumbnail:: ../img/publish/gisquick-new-account-3.png
   :width: 300px

   Gisquick login screen.

The user can log in with username and password. After successful
login, Gisquick loads user's profile page which includes a list of already
published projects. After the very first login or in case that user hasn't
published any project yet, only the message appears stating how to proceed.

.. thumbnail:: ../img/publish/create-account.png

   User's profile page after first login.

In order to publish a ``NEW PROJECT`` from QGIS, a QGIS Gisquick plugin must be connected, see chapter below.

.. _gisquick-plugin:

QGIS Gisquick plugin
---------------------------

In order to publish a project from QGIS, the QGIS Gisquick plugin needs to be
installed and connected. The required plugin is available to download for 64-bit OS
(Windows, Linux, MacOS). Click on ``GET PLUGIN`` and copy the link for your OS.

.. thumbnail:: ../img/publish/get-plugin.png

   Link to Gisquick QGIS plugin source.

In QGIS, open tab ``Plugins`` and choose ``Manage and Install Plugins``. Continue to ``Settings`` tab and click ``Add``.

.. thumbnail:: ../img/publish/qgis-plugins.png

   How to install Gisquick plugin in QGIS.

Paste the copied link for Gisquick plugin in here.
Then go to the ``All`` tab, search for **Gisquick** and hit install (see GIF below).
The plugin is now installed in QGIS, a new icon |logo| should also appear in QGIS plugins toolbar.

.. note:: The plugin link for the repository is available at https://gisquick.org/plugin.

.. thumbnail:: ../img/publish/connect_gisq_to_qgis.gif

    Connect QGIS to GISQUICK

.. note:: The difference between GISQUICK and GISQUICK (with dbhash) is that the dbhash SQLite version is recommended when working with the Geopackage format.

The plugin is installed but not yet connected to the Gisquick publication server.
To connect to the server, click the icon |plugin-logo| in QGIS toolbar or go to tab ``Web`` - ``Gisquick`` - ``Configure``.

.. thumbnail:: ../img/publish/connect-to-server-02.png
   :width: 400px

   Connect to publication server.

Fill in the Gisquick server URL, username and password. You are now connected
to the publication server and ready to publish projects from QGIS. If you fill in the
server URL, username or password incorrectly, the message **Failed to connect!** is displayed
when you try to connect to Gisquick server (by clicking the icon |logo|).
You can correct the information right here in the ``Configure`` tab.

.. thumbnail:: ../img/publish/publish.gif

    Fill in the connection to publication server.

