.. _project-publishing:
 
==================
Project publishing
==================

When ``Publish`` button is successfully pressed in GIS.lab QGIS plugin
:ref:`dialog <gisquick-qgis-plugin-publish>`, 
unique project file name with timestamp together with it's metafile are created.

Then it is necessary to **copy** published QGIS project with all associated data 
to ``vagrant`` directory that is located in ``gisquick`` source code.

.. figure:: img/vagrant-directory.svg
   :align: center
   :width: 450

   Directory for QGIS projects going to be published.

.. seealso:: |see| :ref:`Source code layout <source-code-layout>`

As the final step, open web browser and launch published project in Gisquick 
interface by entering URL below.
You will see welcome screen with possibility to enter credential but for now, 
you can just ``Continue as guest``. 

.. code:: 

   https://localhost:8000?PROJECT=vagrant/<project-directory-name>/<qgs-file-name>

.. _gisquick-welcome:

.. figure:: img/gisquick-welcome.png
   :align: center
   :width: 750

   Gisquick welcome screen.

And now there are no obstacles to enjoy your published project.

.. _gisquick-we-published:

.. figure:: img/gisquick-published.png
   :align: center
   :width: 750

   QGIS project published with Gisquick.

.. seealso:: |see| See :ref:`Publish project on web <practice-gisquick-publishing>`
   section with publishing QGIS projects from GIS.lab Desktop environment.

Type ``tmux kill-session`` to destroy the given session, closing any windows 
linked to it and no other sessions, and detaching all clients attached to it.
Then use ``logout`` to log out from virtual 
machine and ``vagrant halt`` to shut down the running machine Vagrant 
is managing.

.. tip:: |tip| Use following command to run server tests from 
   ``/vagrant/dev/django`` directory.

   .. code:: sh

      $ python ./manage.py test webgis.viewer.tests

.. note:: |note| QGIS Mapserver is also forwarded to host machine on port ``8090``.
   Its logs can be found in ``/var/log/lighttpd`` directory.

