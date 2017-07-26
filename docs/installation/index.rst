Installation
############

Gisquick publishing platform consists of two major components:
**Django-based server application** and **QGIS client plugin**.

Server application can be deployed by Vagrant or Docker. In the first
subsection is described an easy and quick way of setting up
development environment by :doc:`deploying virtual server <vagrant>`
controlled by Vagrant. Following part is focused on :doc:`deployment
in Docker containers <docker>`, which is preferable for testing
purposes.

In the both cases, for deploying virtual server by Vagrant or Docker
containers, Gisquick source code is required. The source code can be
easily downloaded from GitHub repository using ``git`` command.

.. _source-code:

.. code:: sh

   $ git clone https://github.com/gislab-npo/gisquick.git

.. toctree::
   :maxdepth: 1

   vagrant
   docker
   user-management
   plugin
