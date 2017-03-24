=====
Other
=====

.. _technologies-web:

------------
Technologies
------------

* QGIS Desktop and Mapserver
* OpenLayers 3
* AngularJS, Angular UI, Angular Material
* Onsen
* Cordova
* Django
* Python

.. _source-code-layout:
 
------------------
Source code layout
------------------

``clients``
  web and mobile client interfaces
``server``
  Django server
``qgis``
  QGIS plugin
``provision``
  development environment provisioning configuration with Vagrant/Ansible
``dev``
  development directory
``dev/django`` 
  directory for Django development project created during provisioning
``dev/publish`` 
  directory for QGIS projects publishing

------
Mobile
------

GIS.lab Mobile is represented by dedicated hybrid Android client interface 
built on top of the same code base as web inteface with native user interface.

---------
Packaging
---------

* Gisquick QGIS plugin

.. code:: sh

   $ cd /vagrant/qgis/gislab_web \
     && \
     make clean \
     && \
     make compile \
     && \
     make zip

* Gisquick

.. code:: sh

   $ cd /vagrant/server \
     && \
     python ./setup.py sdist

* GIS.lab Mobile

.. code:: sh

   $ nvm use stable
   
   $ export ANDROID_HOME=/home/vagrant/dev/apps/android-sdk-linux \
            PATH=$PATH:/home/vagrant/dev/apps/android-sdk-linux/tools:/home/vagrant/dev/apps/android-sdk-linux/platform-tools \
            ANDROID_BUILD=ant \
     && \
     cd /vagrant/clients/mobile/cordova-app \
     && \
     cordova build android

.. todo:: |todo| Add instructions how to clean environment before build.

-------
License
-------

GNU General Public License version 2 or later.

.. _gisquick-upgrade:

========================
How to upgrade Gisquick?
========================

Gisquick source code update is done with ``pull`` command.

.. code:: sh

   $ git pull

Upgrade with Vagrant:

.. code:: sh

   $ vagrant up
   $ vagrant provision

When there are fundamental changes, it is better to run ``vagrant destroy``
command before ``git pull``.

.. code:: sh

   $ vagrant destroy -f 
   $ git pull
   $ vagrant up

.. tip:: |tip| Quick update can be done with ``git pull`` command followed by
   running ``$ gulp build-web`` on server.

   .. code:: sh

      $ git pull && vagrant up && vagrant ssh
      $ /vagrant/utils/tmux-dev.sh
      $ cd /vagrant/clients
      $ gulp build-web
