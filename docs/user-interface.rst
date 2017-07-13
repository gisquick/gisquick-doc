.. |group-switcher| image:: ./img/ui-layer-group-switcher.png
   :width: 2.5em
.. |layer-attributes| image:: ./img/ui-layer-attributes.png
   :width: 2.5em
.. |zoom-to| image:: ./img/ui-zoom-to.png
   :width: 2.5em
.. |clear-filter| image:: ./img/ui-clear-filter.png
   :width: 2.5em
.. |zoom-geolocation| image:: ./img/ui-zoom-tools-geolocation.png
   :width: 2.5em
.. |zoom-in-out| image:: ./img/ui-zoom-tools-in-out.png
   :width: 2.5em
.. |zoom-extent| image:: ./img/ui-zoom-tools-extent.png
   :width: 2.5em
.. |identify| image:: ./img/ui-identify.png
   :width: 2.5em
.. |measure| image:: ./img/ui-measure.png
   :width: 2.5em
.. |print| image:: ./img/ui-print.png
   :width: 2.5em
 
==============
User Interface
==============

The Gisquick clients User Interface (UI) are designed with a goal to
put together minimal set of functions for useful generic responsive
web and mobile friendly mapping application.

The major part of the UI is occupied by *map canvas* (``1``). On the
left side is located :ref:`content management tools <content-menu>`
(``2``) which is possible to hide by button on its right side
(``3``). Corners of map canvas are filled by (from left-bottom corner,
clockwise) by *map scale* (``4``), :ref:`tools <tool-menu>` (``5``),
:ref:`user menu <user-menu>` (``6``) and :ref:`zoom tools <zoom-menu>`
(``7``). In the bottom part is located statusbar showing current
scale, projection and map coordinates of the cursor (``8``).

.. figure:: ./img/gisquick-ui.svg

   Gisquick user interface description.

.. _content-menu:

------------------
Content management
------------------

Basic project metadata - project description - is accessible by
questionmark, see figure below.

.. figure:: ./img/project-info.png

   Project description.

Content management widget is split into three major tabs:

* Base Layers
* Overlay Layers
* Legend

.. figure:: ./img/content-tabs.png
   :width: 200px
           
   Content tabs.

``Base Layers`` tab allows switching base layers in map canvas. The
list of base layers is defined by publication process as described in
:ref:`Project publishing <publication-base-layers>` section.

.. figure:: ./img/ui-base-layers.png
   :width: 200px
           
   Switching between base layers.
     
``Overlay Layers`` tab allows switching between topics (layer groups),
see :ref:`Project publishing <publication-topics>` section, or
controlling overlay layers one by one.

.. figure:: ./img/ui-overlay-layers.png
   :width: 200px
           
   Topics or map layers switcher.

.. figure:: ./img/ui-topics.png
   :width: 200px
           
   Switching between topics.

In ``Layers`` mode the overlay layers can be switch on/off one by one.

.. figure:: ./img/ui-map-layers.png
   :width: 200px
           
   Switch on/off overlayer layers.

.. tip:: |tip| It is also possible to switch on/off group of layers
   |group-switcher|.
         
In this mode layer attribute data can be accessed by
|layer-attributes|. Atrribute table is displayed in bottom part.

.. figure:: ./img/ui-attributes.svg

   Layer attribute table.

Attribute table allows filtering data based on simple queries, see
figures below.

.. figure:: ./img/ui-attribute-filter-0.png
   :width: 100px
           
   Choose operator for attribute filter.

.. figure:: ./img/ui-attribute-filter-1.svg

   Define filter and ``refresh`` attribute table view.

.. tip:: |tip| By default, attribute table shows only few records. The
   number of displayed records can be controlled in status bar by
   ``Rows by page``. Attributes can be also filter by map canvas
   ``Filter to visible area``.

Every record in attribute table has *Zoom to* button |zoom-to| which
enables zooming and centering related features in map canvas, see
example below.

.. figure:: ./img/ui-zoom-to-feature.svg

   Zoom into selected feature.

.. note:: Filter can be disabled by |clear-filter|. Table view must be refreshed.

.. todo:: Explain info panel.
          
.. _zoom-menu:

----------
Zoom tools
----------

Zoom tools enables controling map view.

* Geolocation |zoom-geolocation|
* Zoom in/out |zoom-in-out|
* Zoom to extent |zoom-extent|

.. figure:: ./img/geolocation.svg

   Geolocation in action.

.. tip:: Zooming and panning is also possible by middle mouse buttom.
   
.. _tool-menu:

-----
Tools
-----

Two basic tools are available:

* Identify |identify|, and
* Measurement |measure|

~~~~~~~~
Identify
~~~~~~~~

By default, features are identified in all visible layers (in the
example below in Schools and District layers).

.. figure:: ./img/identify.svg

   Identify schools layer.

This settings can be changed in ``Identification`` combobox.

.. figure:: ./img/identification-layers.png
   :width: 200px
      
   Change layer priority for identification.

~~~~~~~~~~~~
Measurements
~~~~~~~~~~~~

.. _print-tool:

~~~~~~~~~~
Print tool
~~~~~~~~~~

|print| The main idea is, that once print is activated in Gisquick,
it will download raw print output from QGIS Server using GetPrint
request and will allow interactive visualization of map content
directly in this template.  One can zoom, pan and rotate map and see
exactly how the result will look like.  To get the better idea, see
video below.

.. raw:: html

   <center><iframe width="560" height="315" src="https://www.youtube.com/embed/1g0YduhPwpk" frameborder="0" allowfullscreen></iframe></center>
   <p>

.. todo:: |todo| Web layout atď. ...

---------
User menu
---------
         
