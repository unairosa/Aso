[int]$edad = Read-Host "Cual es tu edad?"
if ($edad -lt 4) {
    Write-Host "Entrada gratis"
} elseif ($edad -lt 19) {
    Write-Host "Precio de la entrada: 5€"
} else {
    Write-Host "Precio de la entrada: 10€"
}