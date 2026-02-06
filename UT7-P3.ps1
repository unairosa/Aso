Import-Module ActiveDirectory
$rutaBase = "C:\Empresa_users"
if (-Not (Test-Path $rutaBase)) { New-Item -ItemType Directory -Path $rutaBase -Force }
$usuarios = Get-ADUser -Filter * -SearchBase "OU=Empresa,DC=EMPRESA,DC=LOCAL"
foreach ($u in $usuarios) {
    $rutaUsuario = Join-Path $rutaBase $u.SamAccountName
    if (-Not (Test-Path $rutaUsuario)) { New-Item -ItemType Directory -Path $rutaUsuario -Force }
    $acl = Get-Acl $rutaUsuario
    $acl.SetAccessRuleProtection($true, $false)
    $permiso = New-Object System.Security.AccessControl.FileSystemAccessRule($u.SamAccountName, "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
    $acl.SetAccessRule($permiso)
    Set-Acl $rutaUsuario $acl
}
if (-Not (Get-SmbShare -Name "Empresa_users$" -ErrorAction SilentlyContinue)) { New-SmbShare -Name "Empresa_users$" -Path $rutaBase -FullAccess "Administradores" }
Write-Host "Estructura de carpetas de usuarios creada correctamente y compartida como Empresa_users$."

