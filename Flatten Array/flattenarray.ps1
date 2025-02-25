function arrayreq {
    param (
        [array]$array1
        
    )
    $new_array = @()
    foreach ($item in $array1) {
        if ($null -ne $item) {
            if ($item -is [System.Collections.IEnumerable] -and $item -isnot [string] ) {
                $new_array += arrayreq -array1 $item 
            }else {
            $new_array += $item}
        }
    }
    return $new_array
}

$inputList = @(1, @(2, 3, $null, 4), @(5, $null))
$result = arrayreq -array1 $inputList
Write-Output $result