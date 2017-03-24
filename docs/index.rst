.. _gisquick:
 
********
Gisquick
********

Gisquick is an open source geospatial data publishing platform
developed for rapid sharing of QGIS projects in web. Gisquick is
separated project from the core `GIS.lab <http://web.gislab.io>`__
system with aim to produce generally usable QGIS web interface, usable
with or without GIS.lab infrastructure.

It provides responsive web design, legend, identification possibilities. 
It allows creating topics from layers list, adding base and overlay layers, 
attribute table data filtering, measuring coordinates, length or area
and handy project printing from web. 
 
To get the better idea what Gisquick is, see video below.
Following subsections describe all closely related information.


.. raw:: html

   <center><iframe width="560" height="315" src="https://www.youtube.com/embed/7vBM1X5QuqE" frameborder="0" allowfullscreen></iframe></center>
   <p>

An integral part of whole mechanism is :ref:`Gisquick plugin
<gisquick-qgis-plugin>` in QGIS.  On the ground that Gisquick is
currently still in process of development, there are no released
packages yet. However, installation is possible.  Above environment
can be installed in virtual machine using **Vagrant**.  Vagrant will
automatically install whole development environment and build Gisquick
from source code.﻿ Following subsections give a detailed insight into
whole mechanism.

.. toctree::
   :maxdepth: 2
   :numbered:

   installation-web
   project-publishing
   environment-web
   other
 
.. important:: |imp| No GIS.lab is needed! Only **Linux** and **Mac OS X** 
   host systems, :ref:`Git <git-installation>`, 
   :ref:`VirtualBox <vb-installation>`, 
   :ref:`Vagrant <vagrant-installation>` and :ref:`Ansible <ansible-installation>` 
   are required. 
