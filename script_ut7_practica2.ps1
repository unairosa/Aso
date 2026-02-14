New-Item -Path "C:\Empresa" -ItemType Directory -Force

$datos = Import-Csv "C:\departamentos.csv" -Delimiter ";"

foreach ($linea in $datos) {
    New-Item -Path "C:\Empresa\$linea.departamento" -ItemType Directory

    $acl = Get-Acl $ruta
    $acl.SetAccessRuleProtection($true, $false)

    $acl.SetAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")))
    $acl.AddAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule("Usuarios del dominio","Read","ContainerInherit,ObjectInherit","None","Allow")))
    $acl.AddAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule($dep.departamento,"Modify","ContainerInherit,ObjectInherit","None","Allow")))

    Set-Acl $ruta $acl
}

New-SmbShare -Name "Empresa" -Path "C:\Empresa" -FullAccess "Usuarios del dominio"


