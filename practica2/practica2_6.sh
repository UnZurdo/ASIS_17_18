#!/bin/bash
directorios=`find /home/"$USER"/bin*/ -type d 2> /dev/null`
path=""
if [ -z "$directorios" ]
then
  path=`mktemp -d /home/"$USER"/binXXX`
  echo "Se ha creado el directorio "$path""
else
  path=`stat -c "%n=%Y" $directorios | sort -n -t = -k 2 | grep -o "\/.*\/" | head -n 1`
fi

echo "Directorio destino de copia: "$path""
ejecutables=`find -maxdepth 1 -mindepth 1 -type f -printf '%f\n'`
ncopias=0
for i in $ejecutables; do
  cp ./"$i" "$path"
  echo "./"$i" ha sido copiado a "$path""
  ncopias=$((ncopias+1))
done
echo "Se han copiado "$ncopias" archivos"
