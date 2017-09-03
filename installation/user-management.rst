User management
===============

Currently user accounts can be managed only manually from Django
shell.

At first, log in to Gisquick Django application server. The procedure
can vary when running virtual server by Vagrant or in Docker
containers.

Vagrant
-------

In the case of virtual server deployed using Vagrant, see
:doc:`vagrant`, log in by

.. code-block:: bash

   $ vagrant ssh

Afterwards on the server enter Django shell

.. code-block:: bash

   $ workon gisquick
   $ python $HOME/deploy/www/manage.py shell

.. _vagrant-user:
   
.. tip:: Virtual server provided by Vagrant comes with predefined
   ``vagrant`` user account. This account can be used for testing
   purposes. Password for this account is the same as the name,
   ie. *vagrant*.

Docker
------

When running Gisquick in Docker containers, see :doc:`docker`, at
first Django app docker container must be identified. The following
command will also enter Django shell.

.. code-block:: bash
                
   $ docker exec -it `docker ps -qf "ancestor=gisquick/django"` django-admin shell

Create new user account
-----------------------

After entering Django shell, a new user account can be created
programmatically (in example below a new account ``user1`` with
password ``user1`` will be created)

.. code-block:: python
                
   from django.contrib.auth import get_user_model
   get_user_model().objects.create_user('user1', email='user@gisquick.org',
                                        password='user1', first_name='User1')

To quit Django shell type

.. code-block:: python

   exit()

Then the new user can log in into Gisquick application.

.. figure:: ../img/installation/login-screen.png

   Log in as *user1*.

After log in an empty Gisquick project is loaded. 

.. figure:: ../img/installation/empty-project.png

   Empty Gisquick project. OpenStreetMap is used as a base layer.

