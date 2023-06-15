.. _before-publishing:

================
Before publishing
================



.. _preparing-project:

Creating Gisquick account
-------------------------

First of all, a new user account has to be created on a publication
server (for example on Gisquick demo publication server as it is described below).
This can be done by filling in the registration form available at https://demo.gisquick.org/.

.. thumbnail:: ../img/gisquick-new-account-0.png
   :width: 300px

   Registration form for creating a new user account.

After pressing ``CREATE ACCOUNT`` button a confirmation e-mail should
be sent to a given e-mail address.
 
.. thumbnail:: ../img/gisquick-new-account-1.png

   Completion of registration process will be done by pressing
   ``ACTIVATE ACCOUNT`` button.

Afterwards, a new user is notified about successful signing-in.

.. thumbnail:: ../img/gisquick-new-account-2.png
   :width: 300px
   
   A new user account has been successfully created.

After clicking on ``CONTINUE`` button, the new user will be redirected to
the publication server welcome screen.

.. thumbnail:: ../img/gisquick-new-account-3.png
   :width: 300px

   Gisquick login screen.

The user can log in with username and password. After successful
login, Gisquick loads user's profile page which includes a list of already
published projects. After the very first login or in case that user hasn't
published any project yet, only the message appears stating how to proceed.

.. thumbnail:: ../img/gisquick-new-account-04.png
   :width: 500px

   User's profile page after first login.

In order to publish a ``NEW PROJECT`` from QGIS, a QGIS Gisquick plugin must be connected, see chapter below.

.. _uploading-project:

QGIS Gisquick plugin
---------------------------

In order to publish a project from QGIS, the Qickquick QGIS plugin needs to be
installed and connected. The required plugin is available to download for 64-bit OS
(Windows, Linux, MacOS). Click on ``GET PLUGIN`` and copy the link for your OS.

.. thumbnail:: ../img/qgis-plugin-download.png
   :width: 500px

   Link to Gisquick QGIS plugin source.

In QGIS, open tab ``Plugins`` and choose ``Manage and Install Plugins``. Continue to ``Settings`` tab and click ``Add``.

.. thumbnail:: ../img/qgis-plugins.png
   :width: 1000px

   How to install plugin in QGIS.

Paste the copied link for Gisquick plugin in here. The plugin is now installed in QGIS, you can check it in the list of installed plugins.
A new icon should also appear in QGIS plugins toolbar.

.. thumbnail:: ../img/logo.png
   :width: 30px

   Gisquick QGIS plugin icon.

The plugin is now installed but not connected to the Gisquick publication server.
To connect it, click the icon in QGIS toolbar or go to tab ``Web`` - ``Gisquick`` - ``Configure``.

.. thumbnail:: ../img/connect-to-server-02.png
   :width: 300px

   Connect to publication server.

Fill in the Gisquick server URL, username and password. You are now connected to the publication server and ready to publish your QGIS projects.

.. thumbnail:: ../img/connect-to-server-01.png
   :width: 350px
   
   Fill in the connection to publication server.


.. _preparation-in-qgis:

Preparation in QGIS
-------------------

