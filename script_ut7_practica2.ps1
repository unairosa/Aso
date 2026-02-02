$deps = Import-Csv "C:\Users\Administrador\Downloads\archivos\departamentos.csv" -Delimiter ";"

New-Item "C:\Empresa" -ItemType Directory -ErrorAction SilentlyContinue

foreach ($d in $deps) {
    New-Item "C:\Empresa\$($d.Departamento)" -ItemType Directory -ErrorAction SilentlyContinue

    $acl = Get-Acl "C:\Empresa\$($d.Departamento)"
    $acl.SetAccessRuleProtection($true,$false)

    $acl.AddAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule("$($d.Departamento)","Modify","ContainerInherit,ObjectInherit","None","Allow")))
    $acl.AddAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")))
    $acl.AddAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule("Usuarios del dominio","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")))

    Set-Acl "C:\Empresa\$($d.Departamento)" $acl
}

$aclRoot = Get-Acl "C:\Empresa"
$aclRoot.AddAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule("Usuarios del dominio","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")))
Set-Acl "C:\Empresa" $aclRoot

New-SmbShare -Name "Empresa" -Path "C:\Empresa" -FullAccess "Administradores" -ChangeAccess "Usuarios del dominio"

