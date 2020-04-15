=====
Other
=====

.. _technologies-web:

---------------
Video tutorials
---------------

Gisquick video tutorials are available from `YouTube channel
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
  Web and mobile client interfaces
``docker``
  Docker recipes, see :doc:`./administrator-manual/installation/docker`
..
  ``provision``
  development environment provisioning configuration with Vagrant/Ansible, see :doc:`./administrator-manual/installation/vagrant`
``server``
  Django server
``utils``
  Utilities

See also other Gisquick GitHub repositories:

* `Gisquick QGIS plugin <https://github.com/gislab-npo/gisquick-qgis-plugin>`__
* `Gisquick documentation <https://github.com/gislab-npo/gisquick-doc>`__

--------
Releases
--------

* `Gisquick <https://github.com/gislab-npo/gisquick/releases>`__
* `Gisquick QGIS plugin <https://github.com/gislab-npo/gisquick-qgis-plugin/releases>`__

-------
License
-------

`GNU General Public License
<https://github.com/gislab-npo/gisquick/blob/master/LICENSE>`__ version 2 or
later

..
   ------------------------------------------
   Alternative deploying method using Vagrant
   ------------------------------------------
   
   See :ref:`docker` for recommended deployment procedure.
   
   .. include:: administrator-manual/installation/vagrant.rst
