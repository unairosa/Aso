$num_horas=Read-Host "Pon el numero de horas trabajadas"
$coste_hora=Read-Host "Pon el coste por cada hora"
$num_horas = [double]$num_horas
$coste_hora = [double]$coste_hora
$salario = $num_horas * $coste_hora
Write-Host "El salario es de $salario"