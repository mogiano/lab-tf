#!/bin/sh
sleep 120

sudo apt-get update -y
#sudo apt-get install nginx -y
sudo apt-get install git-core -y
sudo apt-get install docker docker-compose -y
sudo apt-get install -y docker-engine

sudo systemctl status docker
/etc/init.d/nginx start

sudo chown 777 -R /var/www/html

cd /var/www/html
sudo git clone https://github.com/mogiano/wp.git

cd wp

sudo apt-get update -y


sudo docker-compose up -d

