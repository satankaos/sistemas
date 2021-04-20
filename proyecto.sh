#!/bin/bash
opcion=-1
while [ $opcion -ne 0 ]
do
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
echo la ip  es $ip

clear

cat TITULO.TXT

echo "1. Instalar Apache server "
echo "2. Actualizar Paquetes "
echo "3. Actualizar Repositorios  "
echo "4. Crear Carpetas Necesarias"
echo "5.Configurar Arapache "
echo "6.levantar server "
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

mkdir -p /var/www/$server

cp -RT copy /var/www/$server ;;

5) sudo chmod -R 777 /etc/ 
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/pag.conf
echo > /etc/apache2/sites-available/prueva.conf

echo -e "<VirtualHost *:80>\v" >> /etc/apache2/sites-available/pag.conf

echo -e "\tServerAdmin $admin" >>/etc/apache2/sites-available/pag.conf
 
echo -e "\tServername $server" >>/etc/apache2/sites-available/pag.conf
 
echo -e "\tServerAdmin $aliase" >>/etc/apache2/sites-available/pag.conf 

echo -e "\tDocumentRoot /var/www/$server" >>/etc/apache2/sites-available/pag.conf
 
echo -e "\tErrorLog ${APACHE_LOG_DIR}/error.log" >>/etc/apache2/sites-available/pag.conf
 
echo -e "\tCustomLog ${APACHE_LOG_DIR}/access.log combined\v" >>/etc/apache2/sites-available/pag.conf
 
echo -e "</VirtualHost> \v" >> /etc/apache2/sites-available/pag.conf
echo -e "# vim: syntax=apache ts=4 sw=4 sts=4 sr noet" >> /etc/apache2/sites-available/pag.conf;;

6) sudo a2ensite pag.conf

sudo a2dissite 000-default.conf

sudo systemctl restart apache2 

echo -e "$ip \t \t $server" >> /etc/hosts;;
esac
done

