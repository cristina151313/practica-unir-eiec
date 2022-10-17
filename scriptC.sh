#!/bin/bash

: '
Escribid un script que copie un archivo sobre otro, garantizando que solo reciba dos parámetros.
'

# Set arguments into a variable
args=("$@")

# Get the arguments numbers
param=${#args[@]}
if [ "$param" -lt 3 ]; then
    if [ -f "$1" ] || [ -e "$2" ]; then
        # Overwrite file
		cat "$1" > "$2"
        echo "parameter $1 overwrite to parameter $2 successfully."
    fi
else
    echo "Only two input parameters are allowed."
fi

exit 0



