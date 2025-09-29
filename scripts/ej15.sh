#!/bin/bash
read -p "Introduce un numero: " n
for i in {1..10}; do
  echo "$i * $n = $((i*n))"
done
