Deploying testing environment by Vagrant
========================================

After :ref:`downloading Gisquick source code <source-code>`, go to
newly created :file:`gisquick` directory and deploy virtual server
providing Gisquick service.

.. note:: |note| Default configuration is stored in
   :file:`provision/group_vars/all` file. Custom user configuration
   can be defined in :file:`provision/host_vars/gisquick`. In this
   file can be optionally enabled Gisquick experimental mobile client
   by adding configuration variable as ``GISLAB_CLIENT_MOBILE: yes``.

Virtual server can be deployed using ``vagrant`` command. This
operation requires to install `Vagrant
<https://www.vagrantup.com/>`__, `VirtualBox
<http://virtualbox.org>`__, and `Ansible <http://ansible.org/>`__ on
host machine.

.. note:: |note| Minimum version of Ansible is 2.0 and higher, see
   instructions for installing software requirements in `GIS.lab
   documentation
   <http://gislab.readthedocs.io/en/latest/installation/configuration.html#installation-of-requirements>`__.

.. _vagrant-up:

To deploy virtual server run

.. code-block:: sh
   :emphasize-lines: 1
                  
   $ vagrant up

   Bringing machine 'gisquick' up with 'virtualbox' provider...
   ==> gisquick: Importing base box 'trusty-canonical-32'...
   ...
   ==> gisquick: Running provisioner: install (ansible)...
    gisquick: Running ansible-playbook...
   ...
   PLAY RECAP *********************************************************************
   gisquick                   : ok=4    changed=0    unreachable=0    failed=0

.. tip:: |tip| To speed up provisioning using *Apt proxy server*, set
   ``APT_PROXY`` variable before running above command like ``$ export
   APT_PROXY=http://192.168.99.118:3142``. Check instructions how to
   `set up Apt proxy server
   <http://gislab.readthedocs.io/en/latest/general/tips.html#apt-cacher-service>`__
   in GIS.lab documentation. Due to Apt proxy server repeated
   deployment of virtual server will be faster since software packages
   will retrieved from cache.

.. _vagrant-dev-dir:
   
After successful deployment, new directories in source code tree are
created:
   
``dev``
  development directory
``dev/cache`` 
  directory for caching map tiles
``dev/publish`` 
  directory for QGIS projects publishing (this directory is crucial for :doc:`../project-publishing`)

Created virtual machine can be accessed via ``ssh`` vagrant command
(must be called also from source code root :file:`gisquick`
directory).

.. code-block:: sh
   :emphasize-lines: 1
   
   $ vagrant ssh

   Welcome to Ubuntu 14.04.4 LTS (GNU/Linux 3.13.0-83-generic i686)
   
    * Documentation:  https://help.ubuntu.com/
   
    System information disabled due to load higher than 1.0
   
     Get cloud support with Ubuntu Advantage Cloud Guest:
       http://www.ubuntu.com/business/services/cloud
   
   
   Last login: Wed Apr 13 08:49:28 2016 from X.X.X.X

.. _vagrant-dev-services:

Development services can be started using ``tmux-dev.sh`` command
called from server prompt.

.. code-block:: sh
   :emphasize-lines: 1

   vagrant@gisquick:~$ /vagrant/utils/tmux-dev.sh 
   
   ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   System    check identified no issues (0 silenced).
   May 01, 2016 - 22:17:09
   Django version 1.8.9, using settings 'devproj.settings'
   Starting development server at https://localhost:8000/
   Using SSL certificate: /home/vagrant/.virtualenvs/gisquick/local/lib/python2.7/site-packages/sslserver/certs/development.crt
   Using SSL key: /home/vagrant/.virtualenvs/gisquick/local/lib/python2.7/site-packages/sslserver/certs/development.key
   Quit the server with CONTROL-C.
   
   ─────────────────────────────────────────────────────────────────────┬────────────────────────────────────────────────────────────────────
   sudo tail             -n 0             -f /var/log/lighttpd/access.lo│sudo tail             -n 0             -f /var/log/lighttpd/qgis-map
   g /var/log/lighttpd/error.log                                        │server.log
   vagrant@gisquick:~$ sudo tail             -n 0             -f /var/│vagrant@gisquick:~$ sudo tail             -n 0             -f /var
   log/lighttpd/access.log /var/log/lighttpd/error.log                  │/log/lighttpd/qgis-mapserver.log
   ==> /var/log/lighttpd/access.log <==                                 │
                                                                        │
   ==> /var/log/lighttpd/error.log <==                                  │
                                                                        │

   [developme 0:servers*                                                                                         "gisquick" 20:17 01-May-16 

Afterwards Gisquick can be accessed on https://localhost:8000.
 
.. figure:: ../img/installation/vagrant-screen.png

.. tip:: |tip| Use following command to run server tests from 
   ``/vagrant/dev/django`` directory.

   .. code:: sh

      vagrant@gisquick:~$ python ./manage.py test webgis.viewer.tests

.. note:: |note| QGIS Mapserver is also forwarded to host machine on
   port ``8090``.  Its logs can be found in ``/var/log/lighttpd``
   directory.
            
Development services can be stopped from server terminal by ``tmux``
command.

.. code-block:: sh

   vagrant@gisquick:~$ tmux kill-session 

After logout, running virtual server can be shutdown by

.. code-block:: sh

   vagrant@gisquick:~$ logout
   $ vagrant halt

Halted machine can be launched again by ``vagrant up`` command.

.. note:: To destroy virtual machine and delete all related files type

   .. code-block:: sh

      $ vagrant destroy -f

Update environment
------------------

Go to source code tree and update Git repository

.. code-block:: sh

   $ git pull

Then launch virtual machine by ``vagrant up`` and perform provision

.. code-block:: sh

   $ vagrant provision

It is recommended to restart virtual machine

   .. code-block:: sh

      $ vagrant reload

before starting :ref:`development services <vagrant-dev-services>`.
   
.. note:: |note| When there are fundamental changes, it is better to
   create virtual machine from scratch.

   .. code-block:: sh

      $ vagrant -f destroy
      $ vagrant up

   In this case ``vagrant provision`` command is not needed.
          
.. tip:: |tip| Quick update can be done with ``git pull`` command
   followed by running ``gulp build-web`` on server.

   .. code-block:: sh

      $ git pull && vagrant up && vagrant ssh
      $ /vagrant/utils/tmux-dev.sh
      $ cd /vagrant/clients
      $ gulp build-web
