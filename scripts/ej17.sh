#!/bin/bash
suma=0
read -p "Introduce un numero para ir sumandose, pon el 0 para salir: " num
while [ "$num" -ne 0 ]; do
    suma=$((suma+num))
read -p "Introduce un numero para ir sumandose, pon el 0 para salir: " num
done
echo "Resultado de la suma: $suma"
