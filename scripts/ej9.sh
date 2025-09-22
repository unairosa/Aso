#!/bin/bash
echo "Menu:"
echo "1) Sumar"
echo "2) Restar"
echo "3) Multiplicar"
echo "4) Dividir"
read -p "Elige una opcion: " opcion
read -p "Introduce el primer numero: " a
read -p "Introduce el segundo numero: " b

case $opcion in
  1) echo "Resultado: $((a + b))" ;;
  2) echo "Resultado: $((a - b))" ;;
  3) echo "Resultado: $((a * b))" ;;
  4) echo "Resultado: $((a / b))"
  *) echo "Opcion invalida" ;;
esac
