#!/bin/bash
directorios=`find /home/"$USER"/bin*/ -type d 2> /dev/null`
path=""
if [ -z "$directorios" ]
then
  path=`mktemp -d /home/"$USER"/binXXX`
  echo "Se ha creado el directorio $path" | grep -o ".*[^/]"
else
  path=`stat -c "%n=%Y" $directorios | sort -n -t = -k 2 | grep -o "\/.*\/" | head -n 1`
fi

echo "Directorio destino de copia: $path" | grep -o ".*[^/]"

copiados=`cp -v ./*.* "$path" 2> /dev/null`
ncopias=0
for i in $copiados; do
  copiado=`echo "$i" | grep -o "\.\/.*\..*" | tr -d [=\'=]`
  if [ ! -z "$copiado" ]
  then
    echo "$copiado ha sido copiado a $path" | grep -o ".*[^/]"
    ncopias=$((ncopias+1))
  fi
  done
  echo "Se han copiado $ncopias archivos"
