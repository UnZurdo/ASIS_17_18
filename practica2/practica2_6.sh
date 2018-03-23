#!/bin/bash
directorios=`find /home/"$USER"/bin*/ -type d 2> /dev/null`
path=""
if [ -z "$directorios" ]
then
  path=`mktemp -d /home/"$USER"/binXXX`
else
  path=`stat -c "%n=%Y" $directorios | sort -n -t = -k 2 | grep -o "\/.*\/" | head -n 1`
fi

echo "Se ha creado el directorio $path"
echo "Directorio destino de copia: $path"

copiados=`cp -v ./*.* "$path"`
ncopias=0
for i in $copiados; do
  copiado=`echo "$i" | grep -o "\.\/.*\..*" | tr -d [=\'=]`
  #echo "Copiado vale: $copiado"
  if [ ! -z "$copiado" ]
  then
    echo "$copiado ha sido copiado a $path"
    ncopias=$((ncopias+1))
  fi
  done
  echo "Se han copiado $ncopias archivos"
