#!/bin/bash
read -p "Introduce una palabra para añadir al archivo lista: " pal
echo "$pal" >> listaa.txt
cat listaa.txt
