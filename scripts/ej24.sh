#!/bin/bash
read -p "Introduce la ruta del directorio: " dir

if [ ! -d "$dir" ]; then
    echo "Error: $dir no es un directorio válido."
    exit 1
fi

ficheros=0
directorios=0

for entrada in "$dir"/*; do
    if [ -f "$entrada" ]; then
        ficheros=$((ficheros+1))
    elif [ -d "$entrada" ]; then
        directorios=$((directorios+1))
    fi
done

echo "Ficheros: $ficheros"
echo "Subdirectorios: $directorios"