.. _gisquick:

========
Gisquick
========

Gisquick (http://gisquick.org) is designed as an **open source
platform for publishing geospatial data** in the sense of rapid
sharing `QGIS <http://qgis.org>`__ projects on the web. The platform
consists of QGIS plugin, Django-based server application, QGIS server
and web client. The clients are designed with a goal to put
together minimal set of functions for useful generic responsive web
and mobile friendly mapping application.

.. figure:: ./img/example.svg

   Gisquick in action.

The process of data publishing with Gisquick is quite easy. For
client-server communication Gisquick uses open OGC standards, namely
WMS, WMTS and WFS services. Server components can be easily deployed
in Docker containers serving your GIS projects from the cloud or from
your own hardware. Project creators only needs QGIS desktop software
with Gisquick plugin installed.

The platform is designed to be applicable in everyday practice and/or
for further custom development. More relevant information about
Gisquick’s development, including source code, deployment and support
for users is published on `GitHub
<https://github.com/gislab-npo/gisquick>`__.

Following subsections give a detailed insight into whole technology.

-----------
User manual
-----------

.. toctree::
   :maxdepth: 2

   user-manual/project-publishing
   user-manual/user-interface
   user-manual/datasets

--------------------
Administrator manual
--------------------

.. toctree::
   :maxdepth: 2

   administrator-manual/installation/index
   administrator-manual/user-management

--------
See also
--------

.. toctree::
   :maxdepth: 2

   other

.. note:: Gisquick has been originally developed for `GIS.lab
   <http://gislab-npo.github.io/gislab/>`__ system with aim to produce
   generally usable web client interface. Later it was separated into
   a new independent project usable with or without GIS.lab
   infrastructure.