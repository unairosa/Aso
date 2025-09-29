#!/bin/bash
suma=0
for num in {1..1000}; do
    suma=$((suma + num))
done
echo "Suma del 1 al 1000 con for: $suma"

suma2=0
num2=1
while [ "$num2" -le 1000 ]; do
     suma2=$((suma2+num2))
     num2=$((num2+1))
done
echo "Suma del 1 al 1000 con while: $suma2"

suma3=0
num3=1
until [ "$num3" -gt 1000 ]; do
      suma3=$((suma3+num3))
      num3=$((num3+1))
done
echo "Suma del 1 al 1000 con until: $suma3"
