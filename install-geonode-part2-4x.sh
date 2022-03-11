#!/bin/bash

sudo mkdir -p /opt/geonode/
sudo usermod -a -G www-data $USER
sudo chown -Rf $USER:www-data /opt/geonode/
sudo chmod -Rf 775 /opt/geonode/

cd /opt
git clone https://github.com/GeoNode/geonode.git -b 4.x geonode

cd /opt/geonode
docker-compose -f docker-compose.yml pull
docker-compose -f docker-compose.yml up -d
