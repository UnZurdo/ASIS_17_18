#!/bin/bash
echo -n "Introduzca el nombre de un directorio: "
read nombre
if [ -d "$nombre" ]
then
  nficheros=`find $nombre -type f | wc -l`
  ndirectorios=`find $nombre -type d | wc -l`
  echo "\nEl numero de ficheros y directorios en <dir_valido> es de $nficheros y $ndirectorios, respectivamente"
else
    echo "$nombre no es un directorio"
fi
