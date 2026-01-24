[int]$num = Read-Host "Introduce un numero"
for ($i = $num; $i -ge 0; $i --) {
    Write-Host "$i"
}