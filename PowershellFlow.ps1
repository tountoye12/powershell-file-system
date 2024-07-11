

$items = 1..5


foreach($item in $items){

    if($item %2 -eq 0) {
        Write-Host " $item : Even number"  -ForegroundColor Green
    }

    else {
        <# Action when all if and elseif conditions are false #>
        Write-Host " $item :  Odd number" -ForegroundColor Red
    }
}
