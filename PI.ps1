Param(
[Parameter(Mandatory, HelpMessage = "Please provide a valid path")]    
$Path
)
If (-Not $Path -eq ''){
    New-Item $Path
    Write-Host "File created at path $Path"

}   else {
    Write-Error "Path cannot be empty"
}