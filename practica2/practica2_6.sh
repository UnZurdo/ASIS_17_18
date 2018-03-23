#!/bin/bash
#Jorge Fernandez (721529) y Daniel Fraile (721525)
directorios=`find $HOME -type d -name '*bin???' 2> /dev/null`
path=""
if [ -z "$directorios" ]
then
  path=`mktemp -d $HOME/binXXX`
  echo "Se ha creado el directorio "$path""
else
  path=`stat -c "%n=%Y" $directorios | sort -n -t = -k 2 | grep -o ".*\="  | tr -d [=\==] | head -n 1`
fi

echo "Directorio destino de copia: "$path""
ncopias=0
for i in ./*; do
  if [ -x "$i" ]
  then
    cp "$i" "$path"
    echo ""$i" ha sido copiado a "$path""
    ncopias=$((ncopias+1))
  fi
done
echo "Se han copiado "$ncopias" archivos"
