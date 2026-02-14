New-ADOrganizationalUnit -Name "Empresa" -Path "DC=empresa,DC=local"

$departamentos = Import-Csv "C:\Users\Administrador\Downloads\archivos\departamentos.csv" -Delimiter ";"
foreach ($dep in $departamentos) {
    New-ADOrganizationalUnit -Name $dep.Departamento -Path "OU=Empresa,DC=empresa,DC=local"
    New-ADGroup -Name $dep.Departamento -GroupScope Global -Path "OU=$($dep.Departamento),OU=Empresa,DC=empresa,DC=local"
}

$empleados = Import-Csv "C:\Users\Administrador\Downloads\archivos\empleados.csv" -Delimiter ";"
foreach ($emp in $empleados) {
    $usuario = "$($emp.Nombre.ToLower()).$($emp.Apellido.ToLower())"
    New-ADUser -Name "$($emp.Nombre) $($emp.Apellido)" `
        -SamAccountName $usuario `
        -UserPrincipalName "$usuario@empresa.local" `
        -Path "OU=$($emp.Departamento),OU=Empresa,DC=empresa,DC=local" `
        -AccountPassword (ConvertTo-SecureString "aso2025." -AsPlainText -Force) `
        -Enabled $true `
        -ChangePasswordAtLogon $true

    Add-ADGroupMember -Identity $emp.Departamento -Members $usuario
}

