[double]$puntuacion = Read-Host "Introduce tu puntucacion"
if ($puntuacion -eq 0.0) {
    Write-Host "INACEPTABLE"
    Write-Host "Cantidad recibida 0€"
} elseif ($puntuacion -eq 0.4) {
    $dinero = 2400 * 0.4
    Write-Host "ACEPTABLE"
    Write-Host "Cantidad recibida $dinero€"
} else {
    $dinero = 2400 * $puntuacion
    Write-Host "MERITORIO"
    Write-Host "Cantidad recibida $dinero€"
}