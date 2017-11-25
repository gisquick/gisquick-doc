Deployment of server application in Docker containers
=====================================================

Gisquick application is split into 3 services running in Docker
containers:

#. **QGIS server** (``gisquick/qgis-server`` image)
#. **Django Application served with Gunicorn** (``gisquick/django`` image)
#. **Nginx Server** (``gisquick/nginx`` image)

.. note:: |note| Official Gisquick Docker containers are available
   from `Docker Hub <https://hub.docker.com/u/gisquick/>`__.

Docker images can be put together using ``docker-compose``
command. The command reads configuration file in YAML
language. Sample configuration of Gisquick services is shown below.

.. literalinclude:: ../_static/docker/example.docker-compose.yml
   :language: python
   :emphasize-lines: 7,9,17,18,22,23,37,38,41,43
   :linenos:

.. note:: |note| Sample configuration is also available from
	  Gisquick source code: `docker/example.docker-compose.yml
	  <https://github.com/gislab-npo/gisquick/blob/master/docker/example.docker-compose.yml>`__.

.. _docker-publish-dir:
           
It is important to set up shared directories mounted by Docker containers
as volumes. *QGIS Server* requires setting up :file:`publish`
directory which is used for published Gisquick projects (see line
``7``). *Django Application* stores SQLite database in :file:`data`
directory (line ``17``), tile cache is managed in :file:`media`
directory (line ``18``). SSL certificates used by *Nginx Web Server*
are stored in directory :file:`letsencrypt` (line ``38``).

.. tip:: |tip| Use :file:`certbot` directory instead of
   :file:`letsencrypt` when it is intended to use Webroot mode
   to generate new or renew existing Certbot's SSL certificates.

QGIS server is running in this case on port 90 (see line ``9``), Nginx
web server on default port for HTTPS protocol 443 (line ``41``).

Before composing Docker images, shared directories must be created on
host machine. In shown example all directories are located in the same
folder as :file:`docker-compose.yml` file.

.. code-block:: bash

   $ mkdir -p _data/publish _data/media _data/data _data/etc/letsencrypt/live

Directory for SSL certificates is defined by :envvar:`NGINX_HOST`
environmental variable (see line ``43``) located in :file:`live`
directory. For sample configuration, the SSL certificates will be
located in :file:`./_data/etc/letsencrypt/live/server`
directory. See example of creating self-signed certificate below.

   .. code-block:: bash
                
      $ mkdir -p _data/etc/letsencrypt/live/server
      $ openssl req -x509 -nodes -days 3650 -newkey rsa:2048 \
       -keyout _data/etc/letsencrypt/live/server/privkey.pem \
       -out _data/etc/letsencrypt/live/server/fullchain.pem \
       -subj "/C=CZ/ST=Prague/L=Prague/O=Gisquick/OU=IT Department/CN=server"

.. note:: |note| For production self-signed SSL certificates will be
   not enough. In this case can be recommended Certbot (LetsEncrypt)
   certificates. See additional information on `GitHub
   <https://github.com/gislab-npo/gisquick/blob/master/docker/README.md>`__.

.. _docker-configuration:

There are more environmental variables which can be defined. Django
container allows to set up:

* :envvar:`DJANGO_GISQUICK_UPLOAD_MAX_SIZE` - max. size of uploaded projects (string)
* :envvar:`DJANGO_DEBUG` - ``True`` or ``False`` (bool) to enable/disable debug messages
* :envvar:`DJANGO_ACCOUNT_ACTIVATION_DAYS` - number of days (int) for activation of user account

Example of additional configuration:

.. code-block:: yaml
   
     django:
       environment:
         - DJANGO_GISQUICK_UPLOAD_MAX_SIZE='10M'
         - DJANGO_DEBUG=True
         - DJANGO_ACCOUNT_ACTIVATION_DAYS=3

At this point ``docker-compose`` command can be run

.. note:: |note| Notes about installing Docker in Debian Stretch:

   .. code-block:: bash

      $ sudo apt update
      $ sudo apt install -y apt-transport-https ca-certificates wget software-properties-common
      $ wget https://download.docker.com/linux/debian/gpg
      $ sudo apt-key add gpg
      $ echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee -a /etc/apt/sources.list.d/docker.list
      $ sudo apt update
      $ sudo apt install -y docker-ce docker-compose
      
.. code-block:: bash

   $ docker-compose up

This command downloads required Docker images, run and compose
them. Gunicorn logs (see lines ``22`` and ``23`` in
:file:`docker-compose.yml`) are redirected to the terminal.

.. tip:: |tip| Docker compose command can require Administrator rights
   (``sudo``). To avoid that add current user to ``docker``
   user group.

   .. code-block:: bash

      usermod -aG docker <my-user-name>

By default, Gisquick platform is accessible on localhost port 443 (see
line ``41``), https://localhost

.. note:: |note| When using self-signed SSL certificates an exception in web
   browser will be probably required to be added.

   .. figure:: ../img/installation/ssl-exception.png

.. figure:: ../img/installation/docker-screen.png

   Gisquick login screen.

Update installation
-------------------

At first, running instance should be stopped.

.. code-block:: bash

   $ docker-compose down

Docker images will be updated by ``pull`` request.

.. code-block:: bash

   $ docker-compose pull

And up-to-date container can be afterwards combined as described above.

.. code-block:: bash

   $ docker-compose up

Useful tips
-----------

Access running Docker containers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Example of accessing Bash on ``gisquick/django`` container:

.. code-block:: bash
                
   export DJANGO_CONTAINER_ID=`docker ps -qf "ancestor=gisquick/django"`
   docker exec -it $DJANGO_CONTAINER_ID bash

Run Gisquick over HTTP
^^^^^^^^^^^^^^^^^^^^^^

Download `gisquick.template <../_static/docker/gisquick.template>`_
into directory where :file:`docker-compose.yml` lives. Change NGINX service
configuration in order to:

* mount volume with custom Gisquick template (line ``37``)

.. code-block:: yaml

     - ./gisquick.template:/etc/nginx/conf.d/gisquick.template

* change port forwaring (line ``41``) to

.. code-block:: yaml

     - "8000:80"

After restarting Gisquick instance, the application will be accessible
on http://localhost:8000.
