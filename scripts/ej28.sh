#!/bin/bash
read -p "Introduce la base de la red (ejemplo 192.168.1): " base

chequear_ip() {
    ip=$1
    ping "$ip" &>/dev/null
    if [ $? -eq 0 ]; then
        echo "$ip --> OCUPADA"
    else
        echo "$ip --> LIBRE"
    fi
}

listar_ips() {
    for i in {1..254}; do
        ip="$base.$i"   
        chequear_ip "$ip"
    done
}

listar_ips