[int]$num = Read-Host "Introduce un numero"
for ($i = 0; $i -le 10; $i ++) {
    $mult = $i * $num
    Write-Host "$num X $i = $mult"
}