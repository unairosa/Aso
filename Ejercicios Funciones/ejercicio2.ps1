$usuarios = import-csv C:\Users\Administrador\Downloads\usuarios.csv -Delimiter ","
foreach ($us in $usuarios) {
    Write-Host "Usuario: $($us.nombre) $($us.apellidos) $($us.grupo)"
}