Deployment in Docker containers
===============================

Gisquick application is split into 3 services running in Docker
containers:

#. **QGIS server** (``gisquick/qgis-server`` image)
#. **Django Application served with Gunicorn** (``gisquick/django`` image)
#. **Nginx Server** (``gisquick/nginx`` image)

Docker images can be put together using ``docker-compose``
command. The command reads configuration file in YAML
language. Example of such configuration is available in Gisquick
source code (`docker/example.docker-compose.yml
<https://github.com/gislab-npo/gisquick/blob/master/docker/example.docker-compose.yml>`__). Simplified
example is shown below.

.. code-block:: yaml
   :emphasize-lines: 7,9,17,18,31,33
   :linenos:
   
   version: "2"
   services:
     qgisserver:
       restart: always
       image: gisquick/qgis-server
       volumes:
         - ./_data/publish:/publish/:ro
       ports:
         - "9000:90"

     django:
       restart: always
       image: gisquick/django
       links:
         - qgisserver
       volumes:
         - ./_data/media:/var/www/gisquick/media/
         - ./_data/data:/var/www/gisquick/data/
         - ./_data/publish:/publish/
       environment:
         - GUNICORN_ERRORLOG=-
         - GUNICORN_ACCESSLOG=-

     nginx:
       restart: unless-stopped
       image: gisquick/nginx
       links:
         - django
       volumes_from:
         - django:ro
       volumes:
         - ./_data/etc/letsencrypt/:/etc/letsencrypt/
       ports:
         - "443:443"

.. _docker-publish-dir:
           
It is important to set up shared directories mounted by Docker containers
as volumes. *QGIS Server* requires setting up :file:`publish`
directory which is used for published Gisquick projects (see line
``7``). *Django Application* stores SQLite database in :file:`data`
directory (line ``17``), tile cache is managed in :file:`media`
directory (line ``18``). SSL certificates used by *Nginx Web Server*
are stored in directory :file:`letsencrypt` (line ``31``).

.. tip:: |tip| Use :file:`certbot` directory instead of
   :file:`letsencrypt` when it is intended to use Webroot mode
   to generate new or renew existing Certbot's SSL certificates.

QGIS server is running in this case on port 90 (see line ``9``), Nginx
web server on default port for HTTPS protocol 443 (line ``33``).

Before composing Docker images, shared directories must be created on
host machine. In shown example all directories are located in the same
folder as :file:`docker-compose.yml` file.

.. code-block:: bash

   $ mkdir -p _data/publish _data/media _data/data _data/etc/letsencrypt

.. important:: |imp| Current Gisquick docker images suppose that SSL
   certificates are located in :file:`live/projects.gisquick.org`
   directory. In the example below is shown creation of self-signed
   certificate.

   .. code-block:: bash
                
      $ mkdir -p _data/etc/letsencrypt/live/projects.gisquick.org
      $ openssl req -x509 -nodes -days 3650 -newkey rsa:2048 \
       -keyout _data/etc/letsencrypt/live/projects.gisquick.org/privkey.pem \
       -out _data/etc/letsencrypt/live/projects.gisquick.org/fullchain.pem \
       -subj "/C=CZ/ST=Prague/L=Prague/O=Gisquick/OU=IT Department/CN=projects.gisquick.org"

   For production usage self-signed certificates will be
   not enough. In this case can be recommended Certbot (LetsEncrypt)
   certificates. See additional information on `GitHub
   <https://github.com/gislab-npo/gisquick/blob/master/docker/README.md>`__.

At this point ``docker-compose`` command can be run

.. code-block:: bash

   $ docker-compose up

This command downloads required Docker images, run and compose
them. Gunicorn logs (see lines ``20`` and ``21`` in
:file:`docker-compose.yml`) are redirected to the terminal.

.. note:: |note| Docker compose command can require Administrator rights
   (``sudo``). To avoid that add current user to ``docker``
   user group.

   .. code-block:: bash

      usermod -aG docker martin

By default, Gisquick platform is accessible on localhost port 443 (see
line ``33``), https://localhost

.. note:: When using self-signed SSL certificates an exception in web
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

Example of accessing Bash on ``gisquick/django`` container:

.. code-block:: bash
                
   export DJANGO_CONTAINER_ID=`docker ps -qf "ancestor=gisquick/django"`
   docker exec -it $DJANGO_CONTAINER_ID bash
