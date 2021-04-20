#!/bin/bash

read -p "introduce tu nombre: " nombre
echo hola $nombre comencemos 
read -p "ahora introduce el gmail del admin: " admin
echo el usuario es $admin
read -p "ahora introduce el nombre del server ejemplo.com: " server
echo el nombre de servidor es $server
echo creando nombre de servidor
 aliase=www.$server
echo el nombre de servidor es $aliase
read -p "ahora introduce la ip de el host: " ip
echo el nombre de servidor es $ip
opcion=-1
while [ $opcion -ne 0 ]
do
clear
cat TITULO.TXT

echo "1. Instalar Apache server "
echo "2. Actualizar Paquetes "
echo "3. Actualizar Repositorios  "
echo "4. Crear Carpetas Necesarias"
echo "5.Configurar Arapache "
echo "6.Mostrar resulltado "
echo "0.Salir "
read -p "introduzca la opcion por orden si no entiende:  " opcion
case $opcion in
0);;
1) 
sudo apt install apache2
;;

2) sudo apt-get update ;;
3)  sudo apt-get upgrade ;;
4) chmod -R 777 /var/www
mkdir -p /var/www/$server/public_html
chmod -R 777 /var/www
cp -RT copy /var/www/$server/public_html ;;

5) cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/pag.conf
chmod -R 777 /etc/apache2/sites-available
 
echo -e "<VirtualHost *:80>">>/etc/apache2/sites-available/pag.conf

echo -e "\tServerAdmin $admin">>/etc/apache2/sites-available/pag.conf
 
echo -e "\tServername $server">>/etc/apache2/sites-available/pag.conf
 
echo -e "\tServerAdmin $aliase">>/etc/apache2/sites-available/pag.conf 

echo -e "\tDocumentRoot /var/www/server">>/etc/apache2/sites-available/pag.conf
 
echo -e "\tErrorLog ${APACHE_LOG_DIR}/error.log">>/etc/apache2/sites-available/pag.conf
 
echo -e "\tCustomLog ${APACHE_LOG_DIR}/access.log combined">>/etc/apache2/sites-available/pag.conf
 
echo -e "</VirtualHost>">>/etc/apache2/sites-available/pag.conf;;

6)
echo " escribe $server o $ip en el buscador " ;;
esac
done

