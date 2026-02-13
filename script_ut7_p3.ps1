Import-Module ActiveDirectory

$rutaBase = "C:\Empresa_users"
New-Item -ItemType Directory -Path $rutaBase -Force

$usuarios = Get-ADUser -Filter * -SearchBase "OU=Empresa,DC=EMPRESA,DC=LOCAL"

foreach ($u in $usuarios) {
    $rutaUsuario = Join-Path $rutaBase $u.SamAccountName
    New-Item -ItemType Directory -Path $rutaUsuario -Force

    $acl = Get-Acl $rutaUsuario
    $acl.SetAccessRuleProtection($true, $false)

    $permiso = New-Object System.Security.AccessControl.FileSystemAccessRule(
        $u.SamAccountName,
        "FullControl",
        "ContainerInherit,ObjectInherit",
        "None",
        "Allow"
    )

    $acl.SetAccessRule($permiso)
    Set-Acl $rutaUsuario $acl
}

New-SmbShare -Name "Empresa_users$" -Path $rutaBase -FullAccess "Administradores"
