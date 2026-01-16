[int]$n1 = Read-Host "Escribe un numero"
[int]$n2 = Read-Host "Escribe otro numero"
if ($n1 -gt $n2) {
    Write-Host "El primer numero es mayor que el segundo"
}Elseif ($n1 -lt $n2) {
    Write-Host "El primer numero es menor que el segundo"
}Else {
    Write-Host "Son iguales"
}