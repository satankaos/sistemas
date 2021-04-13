#!/bin/bash
echo entrando a la instalacion de Apache 
read -p "introduce tu nombre" nombre
echo hola $nombre comencemos actualizando los paquetes quieres
read -p "introduce s si quieres" actualizar
if  [$actualizar == s]; then
[sudo su 
apt-get update 
aptget upgrade]
fi
echo -e /n ahora introduce el gmail del admin
read -p "ahora introduce el gmail del admin" admin
el usuario es $admin
read -p "ahora introduce el nombre del server ejemplo.com " server
el el nombre de servidor es $server
read -p "ahora introduce el alias  del server www.ejemplo.com " aliase
el el nombre de servidor es $aliase
read -p "ahora introduce la ip de el host " ip
el el nombre de servidor es $ip
echo instalando

sudo apt-get install apache2

echo comprobando instalacion

sudo systemctl status apache2

mkdir -p /var/www/$server/public_html

chmod -R 755 /var/www

cp index.html /var/www/$server/public_html

cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/$server.conf 
echo "<VirtualHost *:80>" >> /etc/apache2/sites-available/$server.conf 
echo -e /t/t "ServerAdmin $admin" >> /etc/apache2/sites-available/$server.conf 
echo -e /t/t "Servername $server" >> /etc/apache2/sites-available/$server.conf 
echo -e /t/t "ServerAdmin $aliase" >> /etc/apache2/sites-available/$server.conf 
echo -e /t/t "DocumentRoot /var/www/$admin/public_html" >> /etc/apache2/sites-available/$server.conf 
echo -e /t/t "ErrorLog ${APACHE_LOG_DIR}/error.log" >> /etc/apache2/sites-available/$server.conf 
echo -e /t/t "CustomLog ${APACHE_LOG_DIR}/access.log combined" >> /etc/apache2/sites-available/$server.conf 
echo "</VirtualHost>" >> /etc/apache2/sites-available/$server.conf
a2ensite $server.conf
a2dissite 000-default.conf
systemctl restart apache2 

echo -e /t $ip    localhost >>/etc/hosts
echo -e /t $ip    $server >>/etc/hosts



##sourse el.sh
