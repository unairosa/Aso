$cont = "contraseña"
$pregunta = Read-Host "Cual es la contraseña?"
if ($pregunta -eq $cont){Write-Host "La contraseña es correcta"}
else {Write-Host "La contraseña es incorrecta"}