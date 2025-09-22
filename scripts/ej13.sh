#!/bin/bash
archivo="lista.txt"
  echo "1) Añadir"
  echo "2) Buscar"
  echo "3) Listar"
  echo "4) Ordenar"
  echo "5) Borrar"
  echo "6) Salir"
  read -p "Elige opcion: " opcion
  case $opcion in
    1) read -p "Nombre: " nom
       read -p "Direccion: " dir
       read -p "Telefono: " tel
       echo "$nom | $dir | $tel" >> "$archivo" ;;
    2) read -p "Texto a buscar: " txt
       grep "$txt" "$archivo" ;;
    3) cat "$archivo" ;;
    4) sort "$archivo" -o "$archivo" ;;
    5) rm -f "$archivo" ;;
    6) exit ;;
    *) echo "Opcion invalida" ;;
  esac
