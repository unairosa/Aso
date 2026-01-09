$usu = $env:USERNAME
$dir = Get-Location
$dom = $env:USERDOMAIN
$equipo = $env:COMPUTERNAME
Write-Host "Hola $usu"
Write-Host "Tu directorio de trabajo es $dir"
Write-Host "Perteneces al dominio $dom"
Write-Host "Tu equipo se llama $equipo"