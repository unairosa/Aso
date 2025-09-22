#!/bin/bash
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2
if [ "$num1" -gt "$num2" ]; then
   echo "El $num1 es mayor"
elif [ "$num2" -gt "$num1" ]; then
   echo "El $num2 es mayor"
else
   echo "Son numeros iguales"
fi
