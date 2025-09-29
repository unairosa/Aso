#!/bin/bash
find / -type f -perm -o=w 2>/dev/null > archivos_peligrosos.txt
echo "Lista guardada en archivos_peligrosos.txt"
