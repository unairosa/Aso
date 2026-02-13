New-Item -Path "C:\Empresa" -ItemType Directory -Force

$datos = Import-Csv "C:\departamentos.csv" -Delimiter ";"

foreach ($linea in $datos) {
    $ruta = "C:\Empresa\" + $linea.departamento
    New-Item -Path $ruta -ItemType Directory -Force

    $acl = Get-Acl $ruta
    $acl.SetAccessRuleProtection($true, $false)

    $p1 = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores", "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
    $acl.AddAccessRule($p1)

    $p2 = New-Object System.Security.AccessControl.FileSystemAccessRule($linea.departamento, "Modify", "ContainerInherit, ObjectInherit", "None", "Allow")
    $acl.AddAccessRule($p2)

    $p3 = New-Object System.Security.AccessControl.FileSystemAccessRule("Usuarios del dominio", "ReadAndExecute", "ContainerInherit, ObjectInherit", "None", "Allow")
    $acl.AddAccessRule($p3)

    Set-Acl $ruta $acl
}

New-SmbShare -Name "Empresa" -Path "C:\Empresa" -FullAccess "Usuarios del dominio"
