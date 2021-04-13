#!/bin/bash

read -p "introduce tu nombre: " nombre
echo hola $nombre comencemos 
read -p "ahora introduce el gmail del admin: " admin
el usuario es $admin
read -p "ahora introduce el nombre del server ejemplo.com: " server
el el nombre de servidor es $server
read -p "ahora introduce el alias  del server www.ejemplo.com: " aliase
el el nombre de servidor es $aliase
read -p "ahora introduce la ip de el host: " ip
el el nombre de servidor es $ip
cat TITULO.TXT
echo "1. Crear Carpetas Necesarias "
echo "2.Actualizar Repositorios "
echo "3.Actualizar Paquetes "
echo "4.Instalar Apache server"
echo "5.Configurar Arapache "
echo "6.Mostrar Host "
echo "2.Actualizar Repositorios "
read -p "introduzca la opcion por orden si no entiende  " opcion
case $opcion in
1)  mkdir -p /var/www/$server/public_html

chmod -R 755 /var/www

cp index.html /var/www/$server/public_html ;;
2)   ;
3)   ;
4)  ;
5)  ;
6)  ;
