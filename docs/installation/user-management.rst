User management
===============

Currently it is not possible to manage user accounts from web
interface. The only way is to use terminal on the server and manage
accounts manually.

At first, someone needs to log in to the server where is running
Gisquick Django application.

In the case of virtual server deployed using Vagrant, see
:doc:`vagrant`, log in by

.. code-block:: bash

   $ vagrant ssh

Afterwards on the server enter Django shell

.. code-block:: bash

   $ workon gisquick
   $ python $HOME/deploy/www/manage.py shell

.. _vagrant-user:
   
.. note:: Virtual server provided by Vagrant comes with predefined
   ``vagrant`` user account. This account can be used for testing
   purposes. Password for this account is the same as the name,
   ie. *vagrant*.
                
When running Gisquick by Docker containers, see :doc:`docker`, at
first Django app docker container must be identified. The following
command will also enter Django shell.

.. code-block:: bash
                
   $ docker exec -it `docker ps -qf "ancestor=gisquick/django"` django-admin shell

Then you can create users programmatically

.. code-block:: python
                
   from django.contrib.auth import get_user_model
   get_user_model().objects.create_user('user1', email='user@gisquick.org',
                                        password='user1', first_name='User1')

To quit Django shell type

.. code-block:: python

   exit()

Then new user can log in into Gisquick application.

.. figure:: ../img/installation/login-screen.png

   Log in as *user1*.

After log in an empty Gisquick project is loaded. 

.. figure:: ../img/installation/empty-project.png

   Empty Gisquick project. OpenStreetMap is used as base layer.

