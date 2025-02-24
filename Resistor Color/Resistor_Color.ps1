
$color = Read-Host ("Which colour would you like to check?")

switch ($color){
    "black" {Write-Output 0}
    "brown" {Write-Output 1}
    "red" {Write-Output 2}
    "orange" {Write-Output 3}
    "yellow "{Write-Output 4}
    "green" {Write-Output 5}
    "blue" {Write-Output 6}
    "violet" {Write-Output 7}
    "grey" {Write-Output 8}
   "white" {Write-Output 9}
   default {Write-Output "Invalid Color"}
}
