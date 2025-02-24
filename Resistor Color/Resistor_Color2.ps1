$colors = @('black','brown','red','orange','yellow','green','blue','violet','grey','white')

$color = Read-Host "Which color would you like to check?"

if( $colors -contains $color){
    Write-Output ($colors.IndexOf($color))
} else {
    Write-Output "Invalid Color"
}