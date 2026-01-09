$n1=Read-Host "Escribe un numero"
$n2=Read-Host "Escribe un numero"
$n1 = [double]$n1
$n2 = [double]$n2
$sum = $n1 + $n2
$resta = $n1 - $n2
$mult = $n1 * $n2
$div = $n1 / $n2
$resto = $n1 % $n2
Write-Host "La suma es $sum"
Write-Host "La resta es $resta"
Write-Host "La multiplicacion es $mult"
Write-Host "La division es $div"
Write-Host "El resto es $resto"