Installation
############

Gisquick publishing platform consists of two major components:

* Django-based **server application** and
* QGIS **client plugin**.

Server application can be easily deployed using *Docker*.

Deployment of server application requires Gisquick source code, which
can be easily downloaded from GitHub repository using ``git`` command.

.. _source-code:

.. code:: sh

   $ git clone https://github.com/gislab-npo/gisquick.git

.. seealso:: |see| See also :doc:`deployment of virtual server by
   Vagrant <vagrant>` section especially in the case of development
   purposes.

.. toctree::
   :maxdepth: 1

   docker
   user-management
   plugin
