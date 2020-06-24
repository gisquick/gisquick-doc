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

There are few topics you might be interested in. Firstly, if you are about to **publish** your **QGIS**
**project online**, see chapter :ref:`chapter-1` to :ref:`chapter-4`. Please notice that there are two alternative approaches of publishing
so the choice must be made which one to follow (chapter :ref:`chapter-2` or :ref:`chapter-3`). Together with every released project,
web map service (**WMS**) is created and can be subsequently modified.

If you wonder **what does the output look like** or **which features are involved**, check chapter :ref:`chapter-5`.
Browse chapter :ref:`chapter-6` for **metadata of example datasets** which were used for documentation. If you plan to
**operate Gisquick publication server** on your own hardware, see chapter :ref:`chapter-7`.

.. thumbnail:: ./img/example.svg

   Gisquick in action.

.. _chapter-1:

1. :doc:`Creating account <user-manual/creating-account>`
--------------------------------------------------------
It is necessary to create an account.

.. _chapter-2:

2. :doc:`Traditional publishing <user-manual/traditional-publishing>`
--------------------------------------------------------------------
Whether to follow traditional way of publishing depends only on user. Nevertheless, both ways have its
pros & cons. Definitely, the traditional approach is a good point to start, since it uses the Gisquick plugin
|plugin| , which has been tested for a long time.
Anyway, please read short description of experimental approach either to consider which one to follow.

2.1 :ref:`Preparing project <preparing-project>`
"""""""""""""""""""""""""""""""""""""""""""""""
How to proceed in QGIS.

2.2 :ref:`Uploading project <uploading-project>`
"""""""""""""""""""""""""""""""""""""""""""""""
How to upload prepared project created in plugin to server.

.. _chapter-3:

3. :doc:`Experimental publishing <user-manual/experimental-publishing>`
----------------------------------------------------------------------
Experimental way of publishing is kind of innovative approach to Gisquick. New plugin |plugin2| is involved.
In comparison to traditional approach, it allows user to easily edit published projects; every change made in
project in QGIS can be reflected in Gisquick by activating plugin which enables user to compare local and cloud
project's folders, layer by layer.

3.1 :ref:`Preparing project <experimental-preparing-project>`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
How to proceed in QGIS.

3.2 :ref:`Uploading project <experimental-uploading-project>`
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
How to connect to the server directly from QGIS and upload project.

.. _chapter-4:

4. :doc:`Releasing project <user-manual/releasing-project>`
----------------------------------------------------------
Last few steps of publishing process are identical for both traditional and experimental way.

.. _chapter-5:

5. :doc:`User interface <user-manual/user-interface>`
----------------------------------------------------
Each component involved in UI is described in this chapter.

.. _chapter-6:

6. :doc:`Sample datasets <user-manual/datasets>`
-------------------------------------------
Basic information about datasets which were used for documentation.

.. _chapter-7:

7. :doc:`Other <user-manual/other>`
----------------------------------
Interesting links to video tutorials, used technologies or source code.

.. note:: Gisquick has been originally developed for `GIS.lab
   <http://gislab-npo.github.io/gislab/>`__ system with aim to produce
   generally usable web client interface. Later it was separated into
   a new independent project usable with or without GIS.lab
   infrastructure.

Summarized chapters and subchapters as they appear in left side menu.

.. toctree::
   :maxdepth: 2

   user-manual/creating-account
   user-manual/traditional-publishing
   user-manual/experimental-publishing
   user-manual/releasing-project
   user-manual/user-interface
   user-manual/datasets
   user-manual/other
