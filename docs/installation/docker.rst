Installation using Docker containers
====================================

Gisquick application is split into 3 services running in Docker
containers:

#. **QGIS server** (``gisquick/qgis-server`` image)
#. **Django Application served with Gunicorn** (``gisquick/django`` image)
#. **Nginx Server** (``gisquick/nginx`` image)

These Docker images can be put together using ``docker-compose``
command. This command reads configuration file in YAML
language. Example of such confuguration is available in Gisquick
source code (`docker/example.docker-compose.yml
<https://github.com/gislab-npo/gisquick/blob/master/docker/example.docker-compose.yml>`__). Another
example is shown below.

.. code-block:: yaml
   :emphasize-lines: 7, 17, 18, 31, 9, 33
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
         - "433:443"
        
It is important to set up shared directories mounted by Docker images
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
web server on default port for HTTPS protocol 433 (line ``33``).

Before running composed Docker images, shared directories must be
created on host machine. In this case all directories is located in
the same folder as :file:`docker-compose.yml` file.

.. code-block:: bash

   $ mkdir -p _data/publish
   $ mkdir -p _data/media
   $ mkdir -p _data/data
   $ mkdir -p _data/etc/letsencrypt
   

Useful tips
-----------

Example of accessing Bash on ``gisquick/django`` container:

.. code-block:: bash
                
   export DJANGO_CONTAINER_ID=`docker ps -qf "ancestor=gisquick/django"`
   docker exec -it $DJANGO_CONTAINER_ID bash
