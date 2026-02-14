New-Item -Path C:\Empresa_users -ItemType Directory

$usuarios = Import-Csv 'C:\archivos\empleados.csv' -Delimiter ";"

foreach($usu in $usuarios){
    $login = "$($usu.nombre).$($usu.apellido)".ToLower()
    New-Item -Path "C:\Empresa_users\$login" -ItemType Directory

    $acl = Get-Acl $ruta
    $acl.SetAccessRuleProtection($true,$false)

    $acl.SetAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores","FullControl","ContainerInherit,ObjectInherit","None","Allow")))
    $acl.AddAccessRule((New-Object System.Security.AccessControl.FileSystemAccessRule($login,"FullControl","ContainerInherit,ObjectInherit","None","Allow")))

    Set-Acl $ruta $acl

    Set-ADUser -Identity $login `
        -ScriptPath "carpetas.bat" `
        -HomeDrive "Z:" `
        -HomeDirectory "\\EMPRESA-DC1\Empresa_users$\$login"
}

New-SmbShare -Name Empresa_users$ -Path C:\Empresa_users -ChangeAccess "Usuarios del dominio" -FullAccess "Administradores"


