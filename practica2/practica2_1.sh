#!/bin/bash
echo -n "Introduzca el nombre del fichero: "
read nombre
if [ -e "$nombre" ]
then
    echo -n "Los permisos del archivo $nombre son: "
    find  "$nombre" -printf "%M\n"|cut -c 2-4
else
    echo "$nombre no existe"
fi
