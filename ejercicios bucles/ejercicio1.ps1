$usuario = Read-Host "Cual es tu nombre de usuario?"
[int]$num = Read-Host "Introduce un numero"
for ($i = 1; $i -le $num; $i++) {
    Write-Host $usuario
}