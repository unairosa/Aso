$rutaBase = "C:\Empresa_users"

$usuarios = @(
    "Carla Mateu","Paco Molla","Toni Garcia","Xaro Zornoza",
    "Gloria Martinez","Juan Mateu","Matias Garcia","Ivan Perez",
    "Sergio Pallares","Marta Zornoza","Ximo Mateu","Enric Garcia",
    "Hugo Perez","Andrea Zornoza","Consuelo Mateu","Natalia Garcia",
    "Juan Antonio Perez","Julio Zornoza"
)

New-Item -ItemType Directory -Path $rutaBase -Force

foreach ($u in $usuarios) {

    $rutaUsuario = "$rutaBase\$u"
    New-Item -ItemType Directory -Path $rutaUsuario -Force

    $acl = Get-Acl $rutaUsuario
    $acl.SetAccessRuleProtection($true, $false)

    $permiso = New-Object System.Security.AccessControl.FileSystemAccessRule(
        "EMPRESA\$u",
        "FullControl",
        "ContainerInherit,ObjectInherit",
        "None",
        "Allow"
    )

    $acl.SetAccessRule($permiso)
    Set-Acl $rutaUsuario $acl
}

New-SmbShare -Name "Empresa_users$" -Path $rutaBase -FullAccess "Administradores"
