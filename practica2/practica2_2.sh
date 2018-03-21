#!/bin/bash
for argumento in "$@"
do
    if [ -e "$argumento" ]
    then
        more "$argumento"
    else
        echo "$argumento no es un fichero"
    fi
done
