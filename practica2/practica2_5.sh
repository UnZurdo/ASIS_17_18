#!/bin/bash
#Jorge Fernandez (721529) y Daniel Fraile(721525)
echo -n "Introduzca el nombre de un directorio: "
read nombre
if [ -d "$nombre" ]
then
  nficheros=`find "$nombre" -type f | wc -l`
  ndirectorios=`find "$nombre" -type d | wc -l`
  ndirectorios=` expr $ndirectorios - 1 `
  echo "El numero de ficheros y directorios en "$nombre" es de $nficheros y $ndirectorios, respectivamente"
else
    echo "$nombre no es un directorio"
fi
