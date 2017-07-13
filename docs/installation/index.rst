Installation
############

Gisquick publishing platform consists of two parts: **Django-based
server application** and **QGIS client plugin**. This section
describes installation process of both components. In the first
subsection is described an easy and quick way of :doc:`deploying
virtual server <vagrant>` controlled by Vagrant. It's very useful for
testing or development since no other hardware equipment except of
host machine is required. Second procedure is dedicated for
:doc:`production usage <docker>`, it is based on Docker containers.

In both cases, for deploying virtual server or installation using
Docker containers, Gisquick source code is required. The source code
can be easily downloaded from GitHub repository using ``git`` command.

.. _source-code:

.. code:: sh

   $ git clone https://github.com/gislab-npo/gisquick.git

Following section shows installation of :doc:`QGIS plugin <plugin>` on
**client side**. The last part is dedicated to user management of
running Gisquick server application.

.. toctree::
   :maxdepth: 1

   vagrant
   docker
   plugin
   user-management
