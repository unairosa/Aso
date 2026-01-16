$archivo = Read-Host "Introduce la ruta de un fichero o carpeta"
if (Test-Path $archivo) {
    Write-Host "Si existe"
}Else {
    Write-Host "No existe"
}