[int]$renta = Read-Host "Cual es tu renta anual: "
if ($renta -lt 10000) {
    Write-Host "Te corresponde un 5%"
} elseif ($renta -lt 20000) {
    Write-Host "Te corresponde un 15%"
} elseif ($renta -lt 35000) {
    Write-Host "Te corresponde un 20%"
} elseif ($renta -lt 60000) {
    Write-Host "Te corresponde un 30%"
} else {
    Write-Host "Te corresponde un 45%"
}