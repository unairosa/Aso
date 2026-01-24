[int]$num = Read-Host "Introduce un numero"
for ($i = 0; $i -le $num; $i ++) {
    for ($j = 0; $j -lt $i; $j ++) {
        Write-Host "*" -NoNewline
    }
    Write-Host ""
}