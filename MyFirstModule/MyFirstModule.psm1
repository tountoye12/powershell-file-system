

function show-Date {

  Get-Date
}

function Get-Diallo {

    Write-Host "Hautor is Diallo "
}



function Get-hello {
    param (
        $name
    )

    Write-Host "Hello $name how are you   $(Get-Mood)"  -ForegroundColor Green
    
}


function local:Get-Mood {
   Write-Host "I'm good"
}

Export-ModuleMember -Function Get-Diallo, Show-Date, Get-hello