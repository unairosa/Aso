#!/bin/bash
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2
media=$(( ( num1 + num2 ) / 2 ))
echo "La media es: $media"
