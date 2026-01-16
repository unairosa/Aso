[int]$n1 = Read-Host "Escribe un numero"
[int]$n2 = Read-Host "Escribe otro numero"
Write-Host "*********** CALCULADORA ***********"
Write-Host "1.Sumar"
Write-Host "2.Restar"
Write-Host "3.Multiplicar"
Write-Host "4.Dividir"
[int]$opcion = Read-Host "Elige una opcion (1-4)"
switch ($opcion) {
    1 {
        $suma = $n1 + $n2
        Write-Host "La suma es $suma"
    }
    2 {
        $resta = $n1 - $n2
        Write-Host "La resta es $resta"
    }
    3 {
        $mult = $n1 * $n2
        Write-Host "La multiplicacion es $mult"
    }
    4 {
        $div = $n1 / $n2
        Write-Host "La division es $div"
    }
    default {
        Write-Host "Has introducido un numero incorrecto"
    }
}