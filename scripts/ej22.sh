#!/bin/bash
read -p "Introduce la ruta del directorio: " dir

if [ ! -d "$dir" ]; then
    echo "Error: $dir no es un directorio válido."
    exit 1
fi

contador=0
for entrada in "$dir"/*; do
    if [ -d "$entrada" ]; then
        echo "$entrada --> Directorio"
    elif [ -f "$entrada" ]; then
        echo "$entrada --> Fichero"
    fi
    contador=$((contador+1))
done

echo "Total de entradas: $contador"