[int]$num = Read-Host "Introduce un numero"
for ($i = 1; $i -le $num; $i ++) {
    $empezar = 2* $i - 1
    for ($j = $empezar; $j -ge 1; $j -= 2) {
        Write-Host "$j" -NoNewline
    }
    Write-Host ""
}