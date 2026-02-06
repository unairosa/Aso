Import-Module ActiveDirectory

$grupo = "Personal"

$usuarios = Get-ADGroupMember -Identity $grupo -Recursive | Where-Object { $_.objectClass -eq "user" }

foreach ($usuario in $usuarios) {
    $nombreUsuario = $usuario.SamAccountName
    $rutaPerfil = "\\Empresa\Empresa_users\$nombreUsuario"
    Set-ADUser -Identity $nombreUsuario -ProfilePath $rutaPerfil
    Write-Host "Perfil asignado a $nombreUsuario en $rutaPerfil"
}

