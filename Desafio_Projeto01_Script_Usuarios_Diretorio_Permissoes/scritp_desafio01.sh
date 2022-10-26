#!/bin/bash
# Criado por: Jean Pierre 
# Nome: script_desafio01
# Versão: 1.0
# Esse script foi criado para entrega do Desafio 01 do Bootcampo Cloud Devop DIO

## Criação de Diretorio

echo " Criando Diretorio Publico "
mkdir /Publico 
echo " Criando Diretorio ADM "
mkdir /adm 
echo " Criando Diretorio VEN "
mkdir /ven 
echo " Criando Diretorio Sec "
mkdir /sec 

echo "Finalizando a criação de diretorio"

## Criação de Grupos

echo " Criando o Grupo ADM  "
groupadd grp_adm

echo " Criando o Grupo VEN  "
groupadd grp_ven

echo " Criando o Grupo Sec "
groupadd grp_sec

echo "Finalizando a Criação de Grupos"

## Criação de Usuarios

echo " Criando os usuarios Gupo ADM"

useradd carlos -c "Usuário Grupo ADM" -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd maria -c "Usuário Grupo ADM" -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd joao -c "Usuário Grupo ADM" -s /bin/bash -m -p $(openssl passwd -5 senha123)

echo " Criando os Usuarios do grupo VEN"

useradd debora -c "Usuário Grupo VEN" -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd sebastiana -c "Usuário Grupo VEN" -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd roberto -c "Usuário Grupo VEN" -s /bin/bash -m -p $(openssl passwd -5 senha123)

echo "Criando usuario deo grupo SEC"

useradd josefina -c "Usuário Grupo SEC" -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd amanda -c "Usuário Grupo SEC" -s /bin/bash -m -p $(openssl passwd -5 senha123)
useradd rogerio -c "Usuário Grupo SEC" -s /bin/bash -m -p $(openssl passwd -5 senha123)

echo "Finalizando a Criação de Usuario"



## Atribuição de Usuarios nos Grupos 

echo " Add Usuario no grupo Grupo ADM  "
usermod -G grp_adm carlos
usermod -G grp_adm maria
usermod -G grp_adm joao

echo " Add Usuario no grupo Grupo VEN "
usermod -G grp_ven debora
usermod -G grp_ven sebastiana
usermod -G grp_ven roberto

echo " Add Usuario no grupo Grupo SEC "
usermod -G grp_sec josefina
usermod -G grp_sec amanda
usermod -G grp_sec rogerio



echo "Finalizando a insersao nos grupos "

## Atribuiçao de permissao Nos Dirertorios

echo " Atribuindo Permissão ao Diretorio Publico "
chmod 777 /Publico

echo " Atribuindo Permissão ao Diretorio ADM "
chmod 770 /adm
chown root:grp_adm /adm

echo " Atribuindo Permissão ao Diretorio VEN "
chmod 770 /ven
chown root:grp_ven /ven

echo " Atribuindo Permissão ao Diretorio SEC "
chmod 770 /sec
chown root:grp_sec /sec

echo "Finalizando atribuicao de Permissão"

echo "Scritp Finalizado"

