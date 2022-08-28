#!/bin/bash

echo -e "Atualizando sistema"
apt-get update
apt-get upgrade -y

echo -e "Instalando dependencias"
apt install unzip -y
cd /tmp
wget https://github.com/jgaraujo/bestprice.git
unzip bestprice.zip
cp -r bestprice /var/www/html

echo -e "Instalando o apache"
apt-get apache2 -y

echo -e "Concluido"
