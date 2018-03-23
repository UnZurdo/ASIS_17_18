#!/bin/bash
directorios=`find /home/"$USER"/bin*/ -type d 2> /dev/null`
if [ -z "$directorios" ]
then
  mkdir /home/"$USER"/bin123

  echo "Se ha creado el directorio /home/"$USER"/bin123"
  echo "Directorio destino de copia: /home/"$USER"/bin123"

  copiados=`cp -v ./*.* /home/"$USER"/bin123`
  for i in $copiados; do
    echo "$i" | grep -o "\.\/.*\..*\'"
  done

else
  #hacer un loop para buscar el directorio y copiar ahi
  echo "Encontrado"
fi

#rm -r /home/"$USER"/bin123/
