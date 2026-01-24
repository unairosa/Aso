$num = 67
while ($true) {
    $aleatorio = [int](Read-Host "Introduce un numero entr el 0 y el 100")
    if ($aleatorio -eq $num) {
        Write-Host "Has hacertado"
        break
    }elseif ($aleatorio -gt 100) {
        Write-Host "No pongas un numero mas alto que 100"
    }elseif ($aleatorio -lt $num) {
        Write-Host "Es mayor"   
    }elseif ($aleatorio -gt $num) {
        Write-Host "Es menor"
    }
}