#!/bin/bash

echo "Atualizando  servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/blob/main/projects.html

cp -R * /var/www/html/
  
