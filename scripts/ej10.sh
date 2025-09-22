#!/bin/bash
read -p "Introduce un numero: " num
if (( num % 2 == 0 )); then
  echo "$num es par"
else
  echo "$num es impar"
fi
