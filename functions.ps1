
function getCurrentDate() {
    Get-Date
}

getCurrentDate


function someArrayElement($array){
    $sum = 0
    for($i=0; $i -le $array.Length; $i++){
        $sum = $sum + $i
    }
    return $sum
}

$arr = 1..3

someArrayElement($arr)



function addNumber{
    param(
        [int]$val1,
        [int]$val2
    )
    $sum = $val1 + $val2
    return $sum
}

$ret = addNumber -val1 1 -val2 2
$ret



function multiply {
    param(
        $val1, 
        $val2, 
        $val3
    )
    return $val1 * $val2 * $val3
}

$result = multiply -val1 1 -val2 10 -val3 9
Write-Host $result