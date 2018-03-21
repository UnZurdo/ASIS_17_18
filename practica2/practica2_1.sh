#!/bin/bash
echo -n "Introduzca el nombre del fichero: "
read nombre
if [ -e "$nombre" ]
then
    echo -n "Los permisos del archivo $nombre son: "
    find  "$nombre" -printf "%M\n"
else
    echo "$nombre no existe"
fi
