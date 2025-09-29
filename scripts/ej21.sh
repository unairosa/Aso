#!/bin/bash
numero=42
echo "Adivina el numero del 1 al 100. Introduce el 0 para rendirte."
while true; do
    read -p "Introduce un numero: " num
    if [ "$num" -eq 0 ]; then
        echo "Te has rendido. El numero era $numero."
    elif [ "$num" -eq "$numero" ]; then
        echo "¡Enhorabuena has acertado!"
        exit 0
    elif [ "$num" -lt "$numero" ]; then
        echo "El numero es mayor."
    else
        echo "El numero es menor."
    fi
done