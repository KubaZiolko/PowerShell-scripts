$evenpredicate = {param($x) $x % 2 -eq 0}

function keep {
    param (
        [array]$collection,
        [scriptblock]$predicate
        )
    $truenumbers = @()
    foreach ($item in $collection) {
        if ((& $predicate $item) -eq $true) {
            $truenumbers += $item
        }
    }
    return $truenumbers 
}
function discard {
    param (
        [array]$collection,
        [scriptblock]$predicate
        )
    $falsenumbers = @()
    foreach ($item in $collection) {
        if ((& $predicate $item) -eq $false) {
            $falsenumbers += $item
        }
    }
    return $falsenumbers 
}

$numbers = 1..5

$kept = keep -collection $numbers -predicate $evenpredicate
Write-Host "Kept: $kept"

$discarded = discard -collection $numbers -predicate $evenpredicate
Write-Host "Discarded: $discarded"

$union = $kept + $discarded | Sort-Object
Write-Host ("Both: $union")