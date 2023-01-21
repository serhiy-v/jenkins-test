#!/bin/bash

apt update -y

apt install apache2 php libapache2-mod-php -y

mkdir -p /var/www/html/

echo "<h1>Created with  Jenkins by Serhii Valchuk<h1>" > /var/www/html/index.html

service apache2 restart