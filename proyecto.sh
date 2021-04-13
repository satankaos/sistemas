#!/bin/bash

read -p "introduce tu nombre: " nombre
echo hola $nombre comencemos 
read -p "ahora introduce el gmail del admin: " admin
echo el usuario es $admin
read -p "ahora introduce el nombre del server ejemplo.com: " server
echo el nombre de servidor es $server
read -p "ahora introduce el alias  del server www.ejemplo.com: " aliase
echo el nombre de servidor es $aliase
read -p "ahora introduce la ip de el host: " ip
echo el nombre de servidor es $ip
opcion=-1
while [ $opcion -ne 0 ]
do
clear
cat TITULO.TXT

echo "1. Crear Carpetas Necesarias "
echo "2.Actualizar Repositorios "
echo "3.Actualizar Paquetes "
echo "4.Instalar Apache server"
echo "5.Configurar Arapache "
echo "6.Mostrar Host "
echo "0.Actualizar Repositorios "
read -p "introduzca la opcion por orden si no entiende:  " opcion
case $opcion in
0);;
1) chmod -R 755 /var/www

 mkdir -p /var/www/$server/public_html

cp index.html /var/www/$server/public_html;;

2)   ;;
3)   ;;
4)  ;;
5)  ;;
6)  ;;

esac
done
