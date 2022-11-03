#!/bin/bash
# Criado por: Jean Pierre 
# Nome: script_servidorweb
# Versão: 1.0
# Esse script foi criado para entrega do Desafio 02 do Bootcampo Cloud Devop DIO, criação do servior web 


## Inicio 

echo " Atulizando pacotes "
apt update 

echo " Instlando Apache"
apt install apache2

echo " Instalando o Unzip"
apt install unzip

echo " Baixando aplicação do Github "
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "Descompactando Aplicação"
unzip main.zip

echo "Copiando os dados para o pasta do Apache"
cp -rvf linux-site-dio-main/* /var/www/html/

echo "Restart do serviço do Apache"
systemctl restart apache2.service

echo "Finalizando a criação do servidor web"
# Fim