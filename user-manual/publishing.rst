.. _publishing:

=======================
Publishing
=======================

.. _preparing-project:

EDIT - tato cast NEBUDE v teto kapitole Publishing
-----------------
EDIT ↓
Firstly, click on ``Publish`` button which is situated next to the
``Upload`` button in the user's project page. It allows publishing a project
directly from QGIS. In order to publish a project, the QGIS plugin needs to be
installed and connected. The required plugin is available to download for 64-bit OS
(Windows, Linux, Darwin).

.. thumbnail:: ../img/publish-button/publish-button-1.png
   :width: 300px
   
   Placement of publish button.

.. thumbnail:: ../img/publish-button/publish-button-2.png

   Where to download plugin for direct publishing from QGIS.

Once the download is complete, open QGIS and find tab ``Plugins`` and
choose ``Manage and install plugins``. Continue to the ``Install from
zip`` tab, set path to the downloaded zip file and hit the install button.

.. thumbnail:: ../img/publish-button/publish-button-3.png

   How to proceed in QGIS to install the experimental plugin.

When the installation is finished, it is possible to check new acquisition
in the list of installed plugins. Also, a new icon appears in QGIS toolbar.
Next step is to prepare the project in QGIS.

.. thumbnail:: ../img/publish-button/publish-button-4.png

   List of installed plugins.

Save the project before the next step.

.. important:: |imp| When using flat files or file-based databases as
   data stores it is highly recommended to save all the files (data and QGIS
   project) in the same directory or its subdirectory. QGIS project must be
   set up to use **relative** paths (see *Project Properties*). An
   error warning appears otherwise (see figure below).
   
   When using any kind of authentication (databases, web services) it
   must be ensured that the server used for publishing will have access
   rights to such data sources.

.. thumbnail:: ../img/different-folders-error.png

   Error warning when different source paths are used.

.. _uploading-project:

TOTO je cast Uploading project - to bude prvni cast v teto kapitole Publishing
-----------------

Once the project is ready, click on Gisquick plugin logo.
For the very first time, Gisquick asks the user to fill in the connection
and Gisquick login details.

.. thumbnail:: ../img/publish-button/publish-button-5.png
   :width: 300px
   
   Example of filled connection and login details.

After succesful check-in to the Gisquick server, the project is screened
in user's experimental publish window. Notice, that the Gisquick 2
icon stays active in QGIS until the user clicks on it again and interrupts the
connection with the server.

.. thumbnail:: ../img/publish-button/publish-button-6.png

   Successful check-in to the Gisquick server and loaded sample project.

The first section called ``CHECK-IN`` consists of two tabs and represents
an overview which is designed to easily check on loaded layers. It is not
possible to make any changes within these tabs. Eventual corrections
could be made back in QGIS.

First tab ``General`` includes some fundamental information about user's
project, e.g. map projection, units, predefined scales or print templates.
Second tab ``Layers`` contains a list of layers with additional information.

When the project is checked and ready, proceed to the ``Upload`` section.
Two windows will split the screen: local project files are listed in the left,
intended server folder appears in the right one. Click on ``UPLOAD FILES`` button.

.. thumbnail:: ../img/publish-button/publish-button-7.png

   Upload section displays local files and intended server folder.

.. _preparation-in-qgis:


↓ ZKOPIROVANO Z RELEASING-PROJECT - toto bude druha cast teto kapitoly Publishing

.. _releasing-project:

Releasing project
-----------------

This chapter follows up on chapter :ref:`chapter-2` and represents last steps of project publishing. 

A section called ``SETTINGS`` is displayed. There are a few
options in the settings window. It is possible to load map canvas using the
map button (``1``). Use the delete button (``2``) in case of removing the whole project.
For logging out find the top right button (``3``).
Furthermore, it is possible to change the project title (``4``), set the
rate of authentication (``5``) or edit map extent setting (``6``). There are few
possibilities how to edit map extent (``7``). The first is to fill in the
desired coordinates into the frames. The second possibility, the map extent can be edited
manually by drawing a delimiting rectangle area ina  map. The last option is to
use the extent of one imported layer or extent of all of them.
Setting map scales is possible in the left box (``8``). Executed changes are
reflected in map preview (``9``).

.. thumbnail:: ../img/ui-project-setting.png

   Project setting.
 
.. thumbnail:: ../img/ui-extent-setting.png
   :width: 200px
   
   Couple of ways how to set map extent.

Check the subsection Layers for advanced adjustment of layers. The base layer
can be chosen in the left box (a blank base map is default). Within the right
box, it is possible to specify which layers will be published or hidden (or both
which means that the layer will be published but turned off when the project is opened). 

.. thumbnail:: ../img/ui-layers-setting.png

   Layers setting.

The last subsection is dedicated to topics. Creating or removing a topic is enabled.
Select a topic to see involved features which can be subsequently modified.

.. thumbnail:: ../img/ui-topics-setting.png

   Subsection Topics. Add and remove button are highlighted in red square.

In the very last step, hit the update button to save all realized changes and finish the publishing process.

.. thumbnail:: ../img/ui-update.png
   :width: 250px
   
   Update button is highlighted in red square.
