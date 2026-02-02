Import-Module ActiveDirectory

New-ADOrganizationalUnit -Name "Empresa" -Path "DC=empresa,DC=local"

foreach ($dep in Import-Csv .\departamentos.csv) {
    New-ADOrganizationalUnit -Name $dep.Departamento -Path "OU=Empresa,DC=empresa,DC=local"
    New-ADGroup -Name $dep.Departamento -GroupScope Global -Path "OU=$($dep.Departamento),OU=Empresa,DC=empresa,DC=local"
}

$pass = ConvertTo-SecureString "aso2025." -AsPlainText -Force

foreach ($emp in Import-Csv .\empleados.csv) {
    $user = ($emp.Nombre + "." + $emp.Apellido).ToLower()
    New-ADUser -Name "$($emp.Nombre) $($emp.Apellido)" -SamAccountName $user -AccountPassword $pass -Enabled $true -Path "OU=$($emp.Departamento),OU=Empresa,DC=empresa,DC=local"
    Add-ADGroupMember -Identity $emp.Departamento -Members $user
}
