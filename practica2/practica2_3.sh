#!/bin/bash
if [ $# -eq 1 ]
then
  if [ -f "$1" ]
  then
    chmod 11 "$1"
    stat --format=%A "$1"
  else
    echo "$1 no existe"
  fi
else
  echo "Sintaxis: practica2_3.sh <nombre_archivo>"
fi
