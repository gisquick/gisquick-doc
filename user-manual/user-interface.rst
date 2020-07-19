.. |group-switcher| image:: ../img/ui-layer-group-switcher.png
   :width: 2.5em
.. |layer-attributes| image:: ../img/ui-layer-attributes.png
   :width: 2.5em
.. |zoom-to| image:: ../img/ui-zoom-to.png
   :width: 2.5em
.. |clear-filter| image:: ../img/ui-clear-filter.png
   :width: 2.5em
.. |zoom-in-out| image:: ../img/ui-zoom-tools-in-out.png
   :width: 2.5em
.. |zoom-extent| image:: ../img/ui-zoom-tools-extent.png
   :width: 2.5em
.. |identify| image:: ../img/ui-identify.png
   :width: 2.2em
.. |measure| image:: ../img/ui-measure.png
   :width: 2.2em
.. |print| image:: ../img/ui-print.png
   :width: 2.2em
.. |scroll| image:: ../img/ui-scroll.png
   :width: 9.8em
.. |wms| image:: ../img/ui-wms.png
   :width: 2.5em
.. |map| image:: ../img/ui-map.png
   :width: 2.5em
.. |info| image:: ../img/ui-info.png
   :width: 2.5em

.. _user-interface:

==============
User interface
==============

The Gisquick clients are designed with a goal to put together a minimal
set of functions for useful generic responsive web and mobile-friendly
mapping application.

The major part of the client's User Interface (UI) is occupied by *map
canvas* (``1``). :ref:`Content management tools <content-menu>` (``2``) are located 
on the left side and can be hidden using the button on its right side (``3``). 
Corners of map canvas are filled up (clockwise from the
bottom-left corner) with *map scale* (``4``), :ref:`tools
<tool-menu>` (``5``), :ref:`user menu <user-menu>` (``6``) and
:ref:`zoom tools <zoom-menu>` (``7``). The status bar is located in 
the bottom part and it shows current scale, projection and map coordinates 
of the cursor (``8``).

.. thumbnail:: ../img/gisquick-ui.png

   Gisquick user interface description.

.. _content-menu:

Content management tools
========================

Content management widget is split into three major tabs:

* **Base Layers**
* **Overlay Layers**
* **Legend**

.. thumbnail:: ../img/content-tabs.png
   :width: 250px
           
   Content tabs.

``Base Layers`` tab allows switching base layers in the map canvas. The
list of base layers is defined by the publication process as described in
:ref:`Traditional publishing <publication-base-layers>` section.

.. thumbnail:: ../img/ui-base-layers.png
   :width: 250px
           
   Switching among base layers.
     
In the tab, you can set the opacity of the base layer.
	 
.. thumbnail:: ../img/ui-opacity.png
   :width: 250px
           
   Setting opacity of the base layer.
     
``Overlay Layers`` tab allows switching among topics (layer groups),
see :ref:`Traditional publishing <publication-topics>` section, or
controlling overlay layers one by one.
   
.. thumbnail:: ../img/ui-topics.png
   :width: 250px
           
   Switching among topics.

In the tab, you can set the opacity of the base layer.
   
.. thumbnail:: ../img/ui-opacity.png
   :width: 250px
           
   Setting opacity of the overlay layers.

To switch to ``Layers`` mode use Topics and Layers switcher.
   
.. thumbnail:: ../img/ui-overlay-layers.png
   :width: 250px
           
   Topics and Layers switcher.
   
In ``Layers`` mode the overlay layers can be switch on/off one by one.

.. thumbnail:: ../img/ui-map-layers.png
   :width: 250px
           
   Switch on/off overlay layers.

.. tip:: |tip| It is also possible to switch on/off group of layers
   |group-switcher|.

``Legend`` tab depicts currently selected layers in ``Layers`` tab.

.. thumbnail:: ../img/ui-legend.png
   :width: 250px
           
   Legend.

Attribute data
--------------

In the ``Layers`` mode, attribute data can be accessed by |layer-attributes|.
The attribute table is displayed in the bottom part, see figure below.

.. thumbnail:: ../img/ui-attributes.png
          
   Layer attribute table.

The attribute table allows data filtering based on simple queries, see
figures below.

.. thumbnail:: ../img/ui-attribute-filter-0.png
   :width: 200px
           
   Choose operator for attribute filter.

.. thumbnail:: ../img/ui-attribute-filter-1.png

   Define filter and ``refresh`` attribute table view.

.. tip:: |tip| Attribute table shows only a few rows. Use the arrows |scroll|
   to scroll through the rows. Attributes can be also 
   filtered by map canvas ``Filter to visible area``.

Every row in the attribute table has a *Zoom to* button |zoom-to| which
enables zooming and centering related features in map canvas, see
figure below.

.. thumbnail:: ../img/ui-zoom-to-feature.png

   Zoom into selected feature.

.. note:: Attribute filter can be disabled by |clear-filter|. Table
          view must be refreshed.

Also, every row has an *Information* button |info| which displays the
information panel with relevant data.

.. thumbnail:: ../img/ui-info-feature.png

   Visualization selected data.

.. _zoom-menu:

Zoom tools
==========

Zoom tools enable controlling map view. Two basic zoom tools are available:

* Zoom in/out |zoom-in-out|
* Zoom to extent |zoom-extent|

.. tip:: Zooming and panning are also possible by the middle mouse button.
   
.. _tool-menu:

Tools
=====

Two basic tools are available:

* Identify |identify|
* Measurement |measure|

Identify
--------

By default, features are identified in all visible layers (in the
example below in Schools and District layers).

.. thumbnail:: ../img/identify.png

   Identify schools and district layer.

These settings can be changed in the ``Identification`` combo box.

.. thumbnail:: ../img/identification-layers.png
   :width: 250px
      
   Change layer priority for identification.

Measurement
-----------

Three measurement modes are available:

* Location (point coordinates)
* Distance
* Area

.. thumbnail:: ../img/ui-measure-tools.png
   :width: 250px
   
   Measurement tools.

.. thumbnail:: ../img/measure-location.png

   Location measurement example. Menu highlighted in red ring.

Location menu allows:

* Zoom to location
* Change the spatial reference system
By default, two systems are supported: QGIS project system and WGS-84 (EPSG:4326) 
known as "GPS coordinates".

.. thumbnail:: ../img/ui-location-menu.png
   :width: 250px
           
   Location menu.

.. thumbnail:: ../img/measure-distance.png

   Distance measurement example. Menu highlighted in red ring.

Distance menu allows:

* Zoom to distance
* Change units
Currently, two systems are supported: international (EU) and 
imperial (UK, US).

.. thumbnail:: ../img/ui-distance-menu.png
   :width: 250px
           
   Distance menu.

.. thumbnail:: ../img/measure-area.png

   Area measurement example. Menu highlighted in red ring.

Area menu allows:

* Zoom to area
* Change units
Currently, two systems are supported: international (EU) and 
imperial (UK, US).

.. thumbnail:: ../img/ui-area-menu.png
   :width: 250px
           
   Area menu.

.. note:: Currently, **no snapping** to features is supported by
          measurement tools.

.. _print-tool:

Print tool
----------

Before :doc:`project publication <project-publishing>`, the
print tool |print| can be activated in Gisquick, which enables one to
download raw output from QGIS server GetPrint request and allows
interactive visualization of map content directly in this template.
One can zoom, pan and rotate the map and see exactly how the result will
look like. To get a better idea, see the video below.

.. raw:: html

   <center><iframe width="560" height="315" src="https://www.youtube.com/embed/1g0YduhPwpk" frameborder="0" allowfullscreen></iframe></center>
   <p>

.. important:: |imp| Print tool in Gisquick is not accessible in
   :ref:`Guest session <guest-session>`, only log in users can use
   this tool.

.. _user-menu:
   
User menu
=========
         
User menu allows to:

* Logout current user
* Open user profile page
* Enter/Leave Full Screen mode
* Display attributions
* Show Help (this document)

.. thumbnail:: ../img/map-attribution.png

   Map attributions displayed.

.. _user-profile-page:

User profile page
=================

User page (:menuselection:`My profile` in the User menu) allows managing
published projects and uploading new ones. In ``Projects`` tab user 
can browse published projects including basic metadata. A project can 
be opened by clicking on its name.

.. thumbnail:: ../img/ui-user-menu.png
   
   User page contains list of published projects.
   (Projects button is highlighted in red square)
   
.. tip:: Project data is available also via WMS service, click WMS link button |wms|. To open the project in the map canvas, click |map|.

New projects can be uploaded by clicking the upload button. Note that
existing project will be automatically overwritten. Projects can be
uploaded in ``zip`` or ``tag.gz`` formats.

.. note:: |note| See project size limits in :ref:`Configuration
   <docker-configuration>` section.

Another option is :doc:`Experimental publishing <experimental-publishing>`.
There is publishing button for this option.
   
.. thumbnail:: ../img/ui-user-page-upload.png

   Upload project button is highlighted in red square.
   Project publishing button is highlighted in green square.

Project settings are opened by clicking the project name. See chapter 
:doc:`Releasing project <releasing-project>` for more information.
