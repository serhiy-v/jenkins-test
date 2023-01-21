#!/bin/bash


sudo apt update -y

sudo apt install apache2 php libapache2-mod-php -y

sudo mkdir -p /var/www/html/

sudo chmod +w /var/www/html/index.html

ls -la /var/www/html/

sudo echo "<h1>Created with  Jenkins by Serhii Valchuk<h1>" > /var/www/html/index.html

sudo service apache2 restart

#TERRAFORM_VER=`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest |  grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'`

#wget https://releases.hashicorp.com/terraform/${TERRAFORM_VER}/terraform_${TERRAFORM_VER}_linux_amd64.zip

#sudo apt install unzip -y

#unzip terraform_${TERRAFORM_VER}_linux_amd64.zip -y

#sudo mv terraform /usr/local/bin/

#terraform version