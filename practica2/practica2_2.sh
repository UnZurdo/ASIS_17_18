#!/bin/bash
#Jorge Fernandez (721529) y Daniel Fraile (721525)
for argumento in "$@"
do
    if [ -f "$argumento" ]
    then
        more "$argumento"
    else
        echo "$argumento no es un fichero"
    fi
done
