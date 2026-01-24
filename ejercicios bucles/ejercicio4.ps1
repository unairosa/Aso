[int]$num = Read-Host "Introduce un numero"
for ($i = 0; $i -le $num; $i ++) {
    if ($i % 2 -ne 0) {
        Write-Host "$i"
    }
}