=====
Other
=====

.. _technologies-web:

------------
Promo videos
------------

To get the better idea what Gisquick is, see video below.

.. raw:: html

   <center><iframe width="560" height="315"
   src="https://www.youtube.com/embed/7vBM1X5QuqE" frameborder="0"
   allowfullscreen></iframe></center> <p>


------------
Technologies
------------

* `QGIS Desktop <http://qgis.org/en/site/>`__ and `Mapserver
  <http://docs.qgis.org/2.18/en/docs/user_manual/working_with_ogc/ogc_server_support.html>`__
* `OpenLayers 3 <https://openlayers.org/>`__
* `AngularJS <https://angularjs.org/>`__
* `Cordova <https://cordova.apache.org/>`__
* `Django <https://www.djangoproject.com/>`__
* `Python <https://www.python.org/>`__

.. _source-code-layout:
 
------------------
Source code layout
------------------

See Gisquick `GitHub repository <https://github.com/gislab-npo/gisquick>`__.

``clients``
  web and mobile client interfaces
``docker``
  Docker recepies, see :doc:`./installation/docker`
``provision``
  development environment provisioning configuration with Vagrant/Ansible, see :doc:`./installation/vagrant`
``server``
  Django server
``utils``
  Utilities

See also related GitHub repositories:

Gisquick QGIS plugin
  https://github.com/gislab-npo/gisquick-qgis-plugin, see :doc:`./installation/plugin`.
Gisquick documentation
  https://github.com/gislab-npo/gisquick-doc
  
------
Mobile
------

GIS.lab Mobile is represented by dedicated hybrid Android client interface 
built on top of the same code base as web inteface with native user interface.

---------
Packaging
---------

* Gisquick application

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

`GNU General Public License
<https://github.com/gislab-npo/gisquick/blob/master/LICENSE>`__ version 2 or
later
