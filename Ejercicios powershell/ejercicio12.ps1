$veg = Read-Host "Quieres la pizza vegetariana o no (Si / No)?"
if ($veg -eq "Si") {
    Write-Host "Elige un ingrediente (tomate y mozzarella incluidas): "
    $ing_veg = Read-Host "Pimiento o Tofu"
    Write-Host "Es vegetariana y los ingredientes son:"
    Write-Host "Tomate, mozzarella y $ing_veg"
} else {
    Write-Host "Elige un ingrediente (tomate y mozzarella incluidas): "
    $ing = Read-Host "Peperoni, Jamon y Salmon"
    Write-Host "No es vegetariana y los ingredientes son: "
    Write-Host "Tomate, mozzarella y $ing"
}