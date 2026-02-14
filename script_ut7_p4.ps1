$usuarios = Get-ADGroupMember "Personal"

foreach($usuario in $usuarios){ 
    Set-ADUser -Identity $usuario.SamAccountName -ProfilePath "\\EMPRESA-DC1\Empresa_users$\$($usuario.SamAccountName)" 
}

