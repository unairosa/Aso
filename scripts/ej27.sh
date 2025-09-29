#!/bin/bash
read -p "Introduce el nombre del fichero: " fichero

existe() {
    if [ -f "$fichero" ]; then
        echo "El fichero $fichero existe."
        chmod u+x "$fichero"
        echo "Permisos cambiados."
    else
        echo "El fichero $fichero no existe."
    fi
}

existe
