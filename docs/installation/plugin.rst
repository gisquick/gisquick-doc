Gisquick plugin
===============

As it was noticed in previous subsection, very important part is represented
by :ref:`Gisquick QGIS plugin <gisquick-qgis-plugin>`.

This plugin is part of ``gisquick`` source code, so all necessary files
are downloaded with cloning process. But let us stick to this order of 
things.

Gisquick plugin builds GIS.lab web bundle from any QGIS desktop project.
It allows adding base layers, creating topics from layers list, 
setting access constraints or project expiration.

.. _gisquick-qgis-plugin-logo:

.. figure:: img/gisquick-qgis-plugin-logo.svg
   :align: center
   :width: 150

   Gisquick QGIS plugin icon.


All installed QGIS plugins are usually located in ``.qgis/python/plugins`` 
directory.
If ``gisquick`` repository is correctly cloned, for GIS.lab QGIS plugin
installation just symbolic link is enough. Create it from ``gisquick`` 
source code directory.

.. code:: sh

   ln -s $(pwd)/qgis/gisquick  ~/.qgis2/python/plugins/gisquick

Let's continue in QGIS environment. Create ordinary QGIS project or use some
existing one. 

.. _qgis-project:

.. figure:: img/qgis-project.png
   :align: center
   :width: 750

   Some QGIS project.

Go to :menuselection:`Plugins --> Manage and install plugins` and 
in ``Installed`` tab of dialog window find **Gisquick plugin**.
Activate this plugin by checking the toggle beside it, see figure
:num:`#install-gisquick-plugin`.

.. _install-gisquick-plugin:

.. figure:: img/install-gisquick-plugin.png
   :align: center
   :width: 750

   Gisquick QGIS plugin activation.

