#!/bin/bash
read -p "Escribe el nombre del archivo origen: " origen
read -p "Escribe el nombre del archivo destino: " destino
if [ ! -f "$origen" ]; then
  echo "El archivo origen no existe"
  exit 1
fi
if [ -e "$destino" ]; then
  echo "Ya existe un archivo o directorio con ese nombre"
  exit 1
fi
cp "$origen" "$destino"
echo "Archivo copiado"
