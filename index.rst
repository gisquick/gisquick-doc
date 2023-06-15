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
**project online**, see chapters :ref:`chapter-1`, :ref:`chapter-2` and :ref:`chapter-3`. Together with every released project,
web map service (**WMS**) is created and can be subsequently modified.

If you wonder **what does the output look like** or **which features are involved**, check chapter :ref:`chapter-4`.
Browse chapter :ref:`chapter-5` for **metadata of example datasets** which were used for documentation. If you plan to
**operate Gisquick publication server** on your own hardware, see chapter :ref:`chapter-6`.

.. note::
   
   This documentation is dedicated to Gisquick version 2. For older documentation visit https://gisquick.rtfd.io/en/release-1_x/.

.. thumbnail:: ./img/example.svg

   Gisquick in action.

.. _chapter-1:

1. :doc:`Before publishing <user-manual/before-publishing>`
--------------------------------------------------------
It is necessary to create a Gisquick account and download QGIS Plugin.

--pridat odkazy na kazdou podkapitolu

.. _chapter-2:

2. :doc:`Publishing <user-manual/publishing>`
----------------------------------------------------------------------
Gisquick allows user to easily edit published projects using QGIS plugin; every change made in
project in QGIS can be reflected in Gisquick by activating plugin which enables the user to compare local and cloud
project's folders, layer by layer.

2.1 :ref:`Preparing project <preparing-project>`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
How to proceed in QGIS.

2.2 :ref:`Uploading project <uploading-project>`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
How to connect to the server directly from QGIS and upload a project.

.. _chapter-3:

3. :doc:`Releasing project <user-manual/releasing-project>`
----------------------------------------------------------
Releasing projet using QGIS plugin.

.. _chapter-4:

4. :doc:`User interface <user-manual/user-interface>`
----------------------------------------------------
Each component involved in UI is described in this chapter.

.. _chapter-5:

5. :doc:`Sample datasets <user-manual/datasets>`
-------------------------------------------
Basic information about datasets which were used for documentation.

.. _chapter-6:

6. :doc:`Other <user-manual/other>`
----------------------------------
Interesting links to video tutorials, used technologies or source code.

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
   user-manual/releasing-project
   user-manual/user-interface
   user-manual/datasets
   user-manual/other
