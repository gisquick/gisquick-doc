Installation
############

Gisquick publishing platform consists of two parts: **Django-based
server application** and **QGIS client plugin**. This section
describes installation process of both components. In the first
subsection is described an easy and quick way of :doc:`deploying
virtual server <vagrant>` controlled by Vagrant. It's very useful for
testing or development since no other hardware equipment except of
host machine is required. Following part is focused on
:doc:`production usage <docker>`, deployment in Docker containers.

In the both cases, for deploying virtual server by Vagrant or in
Docker containers, Gisquick source code is required. The source code
can be easily downloaded from GitHub repository using ``git`` command.

.. _source-code:

.. code:: sh

   $ git clone https://github.com/gislab-npo/gisquick.git

.. toctree::
   :maxdepth: 1

   vagrant
   docker
   user-management
   plugin
