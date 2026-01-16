$nombre = Read-Host "Escribe tu nombre"
$sexo = Read-Host "Escribe tu sexo(M-H)"
$nombre = $nombre.ToUpper()
$sexo = $sexo.ToUpper()
$letra = $nombre[0]
if (($sexo -eq "M" -and $letra -lt "M") -or ($sexo -eq "H" -and $letra -gt "N")){
    Write-Host "Grupo A"
} else {
    Write-Host "Grupo B"
}
