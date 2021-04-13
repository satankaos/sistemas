#!/bin/bash
echo entrando a la instalacion de Apache 
read -p "introduce tu nombre: " nombre
echo hola $nombre comencemos

read -p "ahora introduce el gmail del admin: " admin
echo el usuario es $admin
read -p "ahora introduce el nombre del servidor ejemplo.com:  " servidor
echo el nombre de servidor es $servidor
read -p "ahora introduce el alias  del servidor www.ejemplo.com:  " aliase
echo el nombre de servidor es $aliase

ifconfig

read -p "ahora introduce la ip de el host: " ip
echo  el nombre de servidor es $ip
echo instalando

echo comprobando instalacion

sudo systemctl status apache2

mkdir -p /var/www/$servidor/public_html

chmod -R 755 /var/www

cp index.html /var/www/$servidor/public_html

sudo apt-get install apache2



cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/$servidor.conf 
echo "<VirtualHost *:80>" >> /etc/apache2/sites-available/$servidor.conf 
echo -e /t/t "servidorAdmin $admin" >> /etc/apache2/sites-available/$servidor.conf 
echo -e /t/t "servidorname $servidor" >> /etc/apache2/sites-available/$servidor.conf 
echo -e /t/t "servidorAdmin $aliase" >> /etc/apache2/sites-available/$servidor.conf 
echo -e /t/t "DocumentRoot /var/www/$admin/public_html" >> /etc/apache2/sites-available/$servidor.conf 
echo -e /t/t "ErrorLog ${APACHE_LOG_DIR}/error.log" >> /etc/apache2/sites-available/$servidor.conf 
echo -e /t/t "CustomLog ${APACHE_LOG_DIR}/access.log combined" >> /etc/apache2/sites-available/$servidor.conf 
echo "</VirtualHost>" >> /etc/apache2/sites-available/$servidor.conf
a2ensite $servidor.conf
a2dissite 000-default.conf
systemctl restart apache2 

echo -e /t $ip    localhost >>/etc/hosts
echo -e /t $ip    $servidor >>/etc/hosts



##sourse el.sh
