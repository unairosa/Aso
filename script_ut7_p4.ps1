Import-Csv "C:\Users\Administrador\Downloads\archivos\empleados.csv" -delimiter ";" | ForEach-Object {
    $user = "$($_.nombre).$($_.apellido)"
    if ($_.departamento -eq "PERSONAL"){
        Set-ADUser -Identity $user -ProfilePath \\EMPRESA-DC1\Empresa_users$\$user\
    }
}