[int]$edad = Read-Host "Introduce tu edad"
if ($edad -gt 17) {
    Write-Host "Eres mayor de edad"
}Else {
    Write-Host "Eres menor de edad"
}