#!/bin/bash
read -p "Introduce un directorio: " dir
if [ ! -d "$dir" ]; then
   echo "$dir no es un directorio"
   exit 1
else
   fecha=$(date +"%Y%m%d_%H%M%S")
   nombre="${fecha}_${dir}.tar.gz"
   tar -czf "$nombre" "$dir"
   echo "Se creo el archivo comprimido: $nombre"
fi

