$cadena = "contraseña"
while ($true) {
    $aleatorio = Read-Host "Introduce una contraseña"
    if ($aleatorio -eq $cadena) {
        Write-Host "Has hacertado"
        break
    }elseif ($aleatorio -ne $cadena) {
        Write-Host "Contraseña incorrecta"
    }
}