$n = 12
$number = 0
$steps = 0

do{
if ($n % 2 -eq 0 ){
    $number= $n / 2
    
}else{
    $number= $n * 3 + 1
}
$n = $number
$steps++

} until ($number -eq 1)

Write-Host "liczba krokow wynosi : $steps"