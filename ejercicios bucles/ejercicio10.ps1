do {
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"
    $opcion = Read-Host "Elige una opcion"
    switch ($opcion) {

        "a" {
            $ruta = Read-Host "Ruta y nombre de la carpeta"
            New-Item -ItemType Directory -Path $ruta
        }

        "b" {
            $ruta = Read-Host "Ruta y nombre del fichero"
            New-Item -ItemType File -Path $ruta
        }

        "c" {
            $ruta = Read-Host "Ruta del fichero o carpeta"
            $nuevoNombre = Read-Host "Nuevo nombre"
            Rename-Item $ruta $nuevoNombre
        }

        "d" {
            $ruta = Read-Host "Ruta del archivo o carpeta"
            Remove-Item $ruta -Recurse -Force
        }

        "e" {
            $ruta = Read-Host "Ruta a comprobar"
            Test-Path $ruta
        }

        "f" {
            $ruta = Read-Host "Ruta del directorio"
            Get-ChildItem $ruta
        }

        "g" {Get-Date}
    }

} while ($opcion -ne "x")
