#!/bin/bash
read -p "Accion alta/baja: " accion
read -p "Nombre: " nombre
read -p "Apellido1: " ape1
read -p "Apellido2: " ape2
read -p "Grupo: " grupo
read -p "Cuantos caracteres del apellido1 usar? " n1
read -p "Cuantos caracteres del apellido2 usar? " n2
read -p "Cuantos caracteres del nombre usar? " n3

id="alu${ape1:0:n1}${ape2:0:n2}${nombre:0:n3}"

[ -z "$grupo" ] && grupo="$id"

if [ "$accion" = "alta" ]; then
    echo "Se daria de ALTA al usuario $id en el grupo $grupo"
elif [ "$accion" = "baja" ]; then
    echo "Se daria de BAJA al usuario $id"
else
    echo "Accion invalida. Usa alta o baja."
fi
