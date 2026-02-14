$usuarios = Get-ADGroupMember "Personal"

foreach($usuario in $usuarios){
    $login = $usuario.SamAccountName
    Set-ADUser -Identity $login -ProfilePath "\\EMPRESA-DC1\Empresa_users$\$login"
}
