[int]$n1 = Read-Host "Escribe un numero"
[int]$n2 = Read-Host "Escribe otro numero"
Write-Host "*********** CALCULADORA ***********"
Write-Host "1.Sumar"
Write-Host "2.Restar"
Write-Host "3.Multiplicar"
Write-Host "4.Dividir"
[int]$opcion = Read-Host "Elige una opcion (1-4)"
Function sumar($n1, $n2) {
    $suma = $n1 + $n2
    Write-Host "La suma es $suma"
}
Function restar($n1, $n2){
    $resta = $n1 - $n2
    Write-Host "La resta es $resta"
}
Function multiplicar($n1, $n2) {
    $mult = $n1 * $n2
    Write-Host "La multiplicacion es $mult"
}
Function dividir($n1, $n2) {
    $div = $n1 / $n2
    Write-Host "La division es $div"
}
switch ($opcion) {
    1 {sumar $n1 $n2}
    2 {restar $n1 $n2}
    3 {multiplicar $n1 $n2}
    4 {dividir $n1 $n2}
    default {Write-Host "Has introducido un numero incorrecto"}
}