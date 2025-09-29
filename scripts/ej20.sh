#!/bin/bash
read -p "Introduce un numero: " num
if [ "$num" -lt 2 ]; then
   echo "El numero $num no es primo"
   exit
fi
for ((n2=2; n2<num; n2++)); do
    if (( num % n2 == 0 )); then
       echo "$El numero $num no es primo"
       exit
    fi
done
echo "El numero $num es primo"
