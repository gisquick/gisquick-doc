.. |plugin| image:: ./img/logo.png
   :width: 2.5em
.. |plugin2| image:: ./img/logo2.png
   :width: 2.5em

.. _introduction:

============
Introduction
============

Dear user, welcome to **Gisquick** documentation!
Gisquick (http://gisquick.org) is an open-source geospatial data platform for publishing geospatial data in terms of rapid
sharing `QGIS <http://qgis.org>`__ projects. Explore more to see how easy yet powerful is working in Gisquick.

There are a few topics you might be interested in. Firstly, if you want to **publish** your **QGIS**
**project online**, see sections :ref:`chapter-1` and :ref:`chapter-2`.
Together with every published project, web map service (**WMS**) is created and can be subsequently modified.

If you wonder **what does the output look like** or **which features are involved**, check sections :ref:`chapter-3` and :ref:`chapter-4`.
Browse section :ref:`chapter-5` for **metadata of example datasets** that were used for documentation. If you plan to
**operate Gisquick publication server** on your own hardware, see section :ref:`chapter-6`.

.. note::
   
   This documentation is dedicated to Gisquick version 2. For older documentation visit https://gisquick.rtfd.io/en/release-1_x/.

.. thumbnail:: ./img/example.svg

   Gisquick in action.

.. _chapter-1:

1. :doc:`Before publishing <user-manual/before-publishing>`
--------------------------------------------------------
To successfuly use Gisquick platform, a Gisquick user account must be created and
QGIS Gisquick plugin must be installed.

.. _chapter-2:

2. :doc:`Publishing <user-manual/publishing>`
----------------------------------------------------------------------
Proccess of publishing a project from QGIS to Gisquick.

.. _chapter-3:

3. :doc:`Setting up the project <user-manual/setting-up-project>`
----------------------------------------------------------
All possible settings that can be set to a published project.

.. _chapter-4:

4. :doc:`User interface <user-manual/user-interface>`
----------------------------------------------------
Each feature involved in Gisquick user interface.

.. _chapter-5:

5. :doc:`Sample datasets <user-manual/datasets>`
-------------------------------------------
Basic information about datasets that were used for documentation.

.. _chapter-6:

6. :doc:`Other <user-manual/other>`
----------------------------------
Links to video tutorials, used technologies and source code.

.. note:: Gisquick has been originally developed for `GIS.lab
   <http://gislab-npo.github.io/gislab/>`__ system with an aim to produce
   generally usable web client interface. Later it was separated into
   a new independent project usable with or without GIS.lab
   infrastructure.

Summarized chapters and subchapters as they appear in the left side menu.

.. toctree::
   :maxdepth: 2

   user-manual/before-publishing
   user-manual/publishing
   user-manual/setting-up-project
   user-manual/user-interface
   user-manual/datasets
   user-manual/other
