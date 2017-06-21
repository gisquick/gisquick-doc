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
   :emphasize-lines: 7
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
as volumes. *QGIS Server* requires setting up :file:`publish` directory
used for published Gisquick projects (see line ``7``).

Useful tips
-----------

Example of accessing Bash on ``gisquick/django`` container:

.. code-block:: bash
                
   export DJANGO_CONTAINER_ID=`docker ps -qf "ancestor=gisquick/django"`
   docker exec -it $DJANGO_CONTAINER_ID bash
