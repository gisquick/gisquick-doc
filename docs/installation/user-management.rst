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
   
   
When running Gisquick by Docker containers, see :doc:`docker`, at
first Django app docker must be identified. The following command will
enter Django shell.

.. code-block:: bash
                
   $ docker exec -it `docker ps -qf "ancestor=gisquick/django"` django-admin shell

Then you can create users programmatically

.. code-block:: python
                
   from django.contrib.auth import get_user_model
   get_user_model().objects.create_user('user1', email='user@gisquick.org',
                                        password='user1', first_name='User1')

Django shell can be quited by

.. code-block:: python

   exit()
