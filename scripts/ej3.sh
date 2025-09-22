#!/bin/bash
ls /etc > lista.txt
cat lista.txt
echo "Numero lineas: $(wc -l < lista.txt)"
echo "Numero palabras: $(wc -w < lista.txt)"

