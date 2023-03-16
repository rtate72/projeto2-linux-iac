#!/bin/bash

echo "Atualizando servidor"
apt-get update
apt-get upgrade -y

echo "Instalando Apache"
apt-get install apache2 -y

echo "Instalando unzip"
apt-get install unzip -y

echo "Baixando aplicação no diretório /tmp"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo baixado"
unzip main.zip
cd linux-site-dio-main

echo "Copindo arquivos para pasta padrão do Apache"
cp -R * /var/www/html





