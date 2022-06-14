#!/bin/bash

sudo mkdir -p /opt/geonode/
sudo usermod -a -G www-data $USER
sudo chown -Rf $USER:www-data /opt/geonode/
sudo chmod -Rf 775 /opt/geonode/

cd /opt
git clone https://github.com/GeoNode/geonode.git -b 3.3.2.post2 geonode

cd /opt/geonode
docker-compose build --no-cache
docker-compose up -d
