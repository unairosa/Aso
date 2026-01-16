$dir = Read-Host "Introduce la ruta de un directorio"
if (Test-Path $dir -PathType Container) {
    Write-Host "Es un directorio"
    Get-ChildItem -Path $dir -Recurse
}Else {
    Write-Host "No es un directorio o no existe"
}