=====
Other
=====

.. _technologies-web:

---------------
Video tutorials
---------------

Gisquick video tutorials are available from `Youtube channel
<https://www.youtube.com/channel/UCHXyhq_wrEBnGYTRJovxrCg/videos>`__.

-----
Flyer
-----

Available from `GitHub repository
<https://github.com/gislab-npo/gisquick-doc/tree/master/flyer>`__ in
SVG a PDF format.

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
  Docker recipes, see :doc:`./administrator-manual/installation/docker`
``provision``
  development environment provisioning configuration with Vagrant/Ansible, see :doc:`./administrator-manual/installation/vagrant`
``server``
  Django server
``utils``
  Utilities

See also related GitHub repositories:

Gisquick QGIS plugin
https://github.com/gislab-npo/gisquick-qgis-plugin, see
:doc:`./administrator-manual/installation/plugin`.  Gisquick
documentation https://github.com/gislab-npo/gisquick-doc
  
------
Mobile
------

GIS.lab Mobile is represented by dedicated hybrid Android client interface 
built on top of the same code base as web interface with native user interface.

-----------
Development
-----------

.. include:: installation/vagrant.rst
	     
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
