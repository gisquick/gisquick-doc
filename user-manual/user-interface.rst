.. |layer-attributes| image:: ../img/user_interface/ui-layer-attributes.png
.. |filter| image:: ../img/user_interface/ui-filter-attribute-table.png
.. |pan-to| image:: ../img/user_interface/ui-zoom-to.png
.. |pop-up-info| image:: ../img/user_interface/ui-info.png
.. |zoom-in-out| image:: ../img/user_interface/ui-zoom-tools-in-out.png
   :width: 2.5em
.. |zoom-extent| image:: ../img/user_interface/ui-zoom-tools-extent.png
   :width: 2.5em
.. |identify| image:: ../img/user_interface/ui-identify.png
   :width: 2.2em
.. |measure| image:: ../img/user_interface/ui-measure.png
   :width: 2.2em
.. |measure-identify| image:: ../img/user_interface/ui-tools.png
   :width: 2.2em
.. |user-menu-icon| image:: ../img/user_interface/ui-user-menu-icon.png
   :width: 2.2em
.. |print| image:: ../img/user_interface/ui-print.png
   :width: 2.2em

.. _user-interface:

==============
User interface
==============

The Gisquick clients are designed with a goal to put together a minimal
set of functions for useful generic responsive web and mobile-friendly
mapping application.

The major part of the client's User Interface (UI) is occupied by *map
canvas* (1). :ref:`Content management tools <content-management>` (2) are located
on the left side and can be hidden using the button on its right side (3).
Corners of map canvas are filled up (clockwise from the
bottom-left corner) with *map scale* (4), :ref:`tools
<tools>` (5), :ref:`user menu <user-menu>` (6) and
:ref:`zoom tools <tools>` (7). The status bar is located in
the bottom part and it shows current scale, projection and map coordinates
of the cursor (8).

.. thumbnail:: ../img/user_interface/gisquick-ui.png

Gisquick user interface description.

-------------------------------------

.. _web-map:

Web map
=======

.. _content-management:

Content management
------------------

Content management widget is split into three major tabs:

* **Base Layers** tab allows switching base layers in the map canvas. The list of base layers is defined by the publication process.
* **Overlay Layers** tab allows switching among topics (layer groups), or controlling overlay layers one by one.
* **Legend** tab depicts currently selected layers in Layers tab.

.. thumbnail:: ../img/user_interface/content-tabs.png

   Content tabs.

.. tip:: |tip| In the tab, you can set the opacity of the base layer or the overlay layer.

--------------------

In the Layers mode, **attribute data** can be accessed by |layer-attributes|.
The attribute table is displayed in the bottom part.

Possible operations with attribute table:

*   Filter data - by clicking on |filter| icon next to attribute name
*   Pan to feature - by clicking on |pan-to| icon
*   Open pop up window with feature info - by clicking on |pop-up-info| icon


.. thumbnail:: ../img/user_interface/ui-attributes.png

Layer attribute table.

---------------------------------

.. _tools:

Tools
-----

The tools located in the lower right corner of map canvas, can be used for:

*   Zoom in/out |zoom-in-out|
*   Zoom to project extent |zoom-extent|

The tools situated at the top-left corner of the map canvas (accessed by |measure-identify|), can be used for:

*   Identify |identify|
*   Measurement |measure|
*   Print |print|

**Indentify** tool allows to, by default, identify features in all visible layers.
Settings can be changed in the Identification combo box.

.. thumbnail:: ../img/user_interface/ui-identify-2.png

**Measurement** tool allows to measure:

*   **Coordinates** (Location) in two different coordinate systems (the project one or WGS-84).
*   **Distance** between two or more points in international (m, km) or imperial units (yd, mi).
*   **Area** of marked polygon in international or imperial units.

.. thumbnail:: ../img/user_interface/ui-measurement.png

.. note:: Measurement tool completed by double click.

.. thumbnail:: ../img/user_interface/ui-measurement.gif

**Print** tool allows to print selected layers. User can set:

*   Layout size
*   Format
*   Quality
*   Title

.. thumbnail:: ../img/user_interface/ui-print-2.png

.. note:: Layers can be rotated in print function using ALT + SHIFT + dragging.

.. thumbnail:: ../img/user_interface/ui-print-2.gif


---------------------------------

.. _user-menu:

User menu
---------

User menu, accessed by |user-menu-icon| in top right corner, allows to:

*  **Logout** current user
*  Open user **profile page**
*  Enter/Leave **full screen** mode
*  Display **attributions**
*  Copy **permalink**
*  Show **help**

.. thumbnail:: ../img/user_interface/ui-user-menu.png
   :width: 250px

---------------------------------

.. _profile-page:

Profile page
============

User page (:menuselection:`My profile` in the User menu) allows managing
published projects and uploading new ones.

*   In Projects search tab user can browse published projects including basic metadata.
*   A web map can be opened by clicking on its thumbnail.
*   By clicking on its name, one can access project settings.
*   New projects can be uploaded by clicking the New project button. Note that existing project will be automatically overwritten.
*   The remaining number of possible projects and storage usage can be observed in the lower right corner.
*   Logging out and changing the password is possible by clicking on the icon in the upper right corner.

.. thumbnail:: ../img/user_interface/ui-user-page.png