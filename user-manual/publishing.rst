.. |logo| image:: ../img/logo.png
   :width: 2em

.. _publishing:

=======================
Publishing
=======================

.. _preparing-project:

This section describes the proccess of uploading and publishing QGIS project to Gisquick. It is assumed that
QGIS Gisquick plugin is installed, connected to Gisquick server (see :ref:`Before publishing <before-publishing>`) and 
project is prepared and ready to be published.

Once the project in QGIS is ready, click on the Gisquick plugin logo.
If the user is already connected to publication server (see :ref:`QGIS Gisquick plugin <before-publishing>`),
green message pane will appear.
Otherwise, fill in the connection and Gisquick login details. Then click on ``Open browser``. 

.. thumbnail:: ../img/open-browser.png
   :width: 1000px
   
   Successfull connection to Gisquick server.

The user's profile page opens in browser. If you have not published any projects yet, the profile page looks like this,
if you have, you will see a list of your published projects. For publishing a new project, click on ``NEW PROJECT``.

.. thumbnail:: ../img/gisquick-new-account-04.png
   :width: 500px

   User's profile page.

After that, an overview of the project appears. Basic information, such as QGIS project location, 
map projection, units and print templates, and all layers that are about to be published
are listed in here. It is not possible to make any changes within this step.
Click the button ``LOAD FILES`` and after that, type a project's name and hit ``CREATE``.
Note that the project name cannot be changed later.

--screenshot LOAD FILES

--screenshot Project name - CREATE

The last obligatory step before publishing is setting the project title. 
After setting the title, the project is ready to be published by clicking the button ``PUBLISH``
in the top right corner of Gisquick web interface. Before publishing, project is marked as 
**STAGED**, after publishing it is marked as **PUBLISHED**.

.. note:: Project name may or may not be the same as project title. Unlike the project name,
   the project title can be changed in this **General** section of Gisquick web interace.

--screenshot cervene PUBLISH + staged/published + MAP

The button ``MAP`` gets user to the published web map.

See section :ref:`Setting up the project <setting-up-project>` for further information about all 
the possible settings of a project you are publishing. These settings can be changed before the
hitting the button ``PUBLISH`` or after that.


EDIT ↓

.. important:: |imp| When using flat files or file-based databases as
   data stores it is highly recommended to save all the files (data and QGIS
   project) in the same directory or its subdirectory. QGIS project must be
   set up to use **relative** paths (see *Project Properties*). An
   error warning appears otherwise (see figure below).
   
   When using any kind of authentication (databases, web services) it
   must be ensured that the server used for publishing will have access
   rights to such data sources.

