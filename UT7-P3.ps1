$rutaBase = "C:\Empresa_users"

$usuarios = @(
    "juanmateu","matiasgarcia","ivanperez","sergiopallares","martazornoza",
    "ximomateu","enricgarcia","hugoperez","andreazornoza",
    "consuelomateu","nataliagarcia","juanantonioperez","juliozornoza",
    "carlamateu","tonigarcia","gloriamartinez","pacomolla","xarozornoza"
)

New-Item -ItemType Directory -Path $rutaBase -Force

foreach ($u in $usuarios) {
    $rutaUsuario = "$rutaBase\$u"
    New-Item -ItemType Directory -Path $rutaUsuario -Force

    $acl = Get-Acl $rutaUsuario
    $acl.SetAccessRuleProtection($true, $false)

    $permiso = New-Object System.Security.AccessControl.FileSystemAccessRule(
        $u, "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow"
    )

    $acl.SetAccessRule($permiso)
    Set-Acl $rutaUsuario $acl
}

New-SmbShare -Name "Empresa_users$" -Path $rutaBase -FullAccess "Administradores"
