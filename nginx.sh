#!/bin/sh
sudo apt-get update -y
sudo apt-get install nginx -y
sudo apt-get install git-core -y
sudo apt-get install docker docker-compose -y
/etc/init.d/nginx start

sudo chown 777 -R /var/www/html

sudo echo "<h1><strong> DevOps </strong></h1><br>Lab Infra Agil - Linux - Terraform - AWS - Nginx - GIT<br>" > /var/www/html/index.html