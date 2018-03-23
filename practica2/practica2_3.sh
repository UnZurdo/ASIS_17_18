#!/bin/bash
#Jorge Fernandez (721529) y Daniel Fraile (721525)
if [ $# -eq 1 ]
then
  if [ -f "$1" ]
  then
    chmod u+x "$1"
    chmod g+x "$1"
    stat --format=%A "$1"
  else
    echo "$1 no existe"
  fi
else
  echo "Sintaxis: practica2_3.sh <nombre_archivo>"
fi
