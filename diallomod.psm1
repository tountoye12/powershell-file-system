
function Get-Squarre {
    param (
        $number
    )
    return $number * $number  
}

function Get-Double {
    param (
        $number
    )
    return $number * 2  
}

Export-ModuleMember -Function Get-Squarre, Get-Double


    
