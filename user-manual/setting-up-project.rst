.. |extent-mod| image:: ../img/settings/extent-mod.png
   :width: 2em
.. |extent-lay| image:: ../img/settings/extent-lay.png
   :width: 2em
.. |plus| image:: ../img/settings/plus.png
   :width: 2em



.. _setting-up-project:

======================
Setting up the project
======================

This part of the documentation describes the process of setting up a project in the Gisquick web interface.
The procedure consists of a total of seven following steps/sections, :ref:`General <general>`, :ref:`Files <files>`,
:ref:`Map <map>`, :ref:`Layers <layers>`, :ref:`Topics <topics>`, :ref:`Permissions <permissions>` and
:ref:`Update <update>`. Appropriate project settings greatly affect the appearance and functionality of the resulting web map.

Before the actual setup, it is necessary to have the QGIS project uploaded to the Gisquick server,
for more information check :ref:`Before publishing <before-publishing>` and :ref:`Publishing <publishing>`.

How to access project settings check :ref:`Profile page <profile-page>`.

---------------------------------

.. _general:

General
=======

In the **General** section, the user can check summary information about the project. These are list of layers,
their queryability, CRS, provider, source or information regarding WFS.

.. thumbnail:: ../img/settings/general.png

---------------------------------


.. _files:

Files
=====

The user is able to view all files uploaded to the server within the project in the **Files** section.
Using the right-click on specific file, it is possible to download it, save the link or delete it.

.. thumbnail:: ../img/settings/files.png

---------------------------------

.. _map:

Map
===

In the **Map** section, user defines **scale** for each zoom depth, **extent** and **thumbnail**.

**Scales** settings enables to define depths of zoom. By clicking on ADD button, user adds new scale, with REMOVE button
marked scale will be removed. Double-click on particular scale allows to redefine it.

.. thumbnail:: ../img/settings/map-scales.png
   :width: 220px

**Extent** can be defined in three ways:

*   by entering values of x-min, y-min, x-max and y-max
*   by moving extent boundary while holding **Shift** key (accessed by |extent-mod|)
*   by taking over from defined layer (accessed by |extent-lay|)

.. thumbnail:: ../img/settings/extent.png
   :width: 720px
Extent
---------------------------------


.. _layers:

Layers
======

---------------------------------


.. _topics:

Topics
======

The **Topics** section is used to group layers that are in the project.
Layers can be grouped (e. g. based on their similar theme) already in QGIS, or
the topics (groups of layers) can be created here. A project may or may not have Topics,
the decision is up to the user. A Topic can also contain only a single layer.
If Topics are created, it will affect the appearance of the :ref:`Content management <content-management>`
widget in the published web map. **Topics tab** is located next to the **Layers tab** in the user interface.
A Topic can be easily added or removed using ``ADD`` or ``REMOVE`` buttons. After clicking on
``ADD`` button, the user can edit Topic's name and description and select the layers wanted in the Topic.
Save all changes by using the ``SAVE`` button in the top-right corner.

.. note:: The **Description** of a Topic is called **Abstract** in the Content management
   widget of the web map.

.. thumbnail:: ../img/settings/topics.png



---------------------------------


.. _permissions:

Permissions
===========
The **Permissions** section defines who has access to the published project.
The default setting is that the project is Private.
The Permissions can be:

* **Public** - web map is public and everyone, with or without a Gisquick account, can see it online and interact with it.
* **Private** - only the author of the project has access to it.
* **Authenticated** - only users with valid Gisquick account can see the project/web map online and interact with it.
* **Selected Users** - the author gives permissions to project to selected users by filling in their Gisquick usernames.

.. thumbnail:: ../img/settings/permissions-basic.png

   Basic permissions to project.


These four options are the basic Permissions settings.
However, there is also an advanced setting that is available by checking
the **Multiple roles permissions** option.

.. thumbnail:: ../img/settings/permissions-advanced.png

   Advanced permissions to project.

This option allows the user to create one or more Groups of users
who have different access to layers in the project and can see the resulting web map differently.
The group must be created by clicking on the plus icon |plus| and then
the user can set different settings (**Role Settings, Layers & Attributes, Topics**) for the group.


---------------------------------


.. _update:

Update
======

Gisquick allows user to easily edit published projects using QGIS plugin; every change made in
project in QGIS can be reflected in Gisquick by activating plugin which enables the user to compare local and cloud
project's folders, layer by layer.
-copied from Introduction