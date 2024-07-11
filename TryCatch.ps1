
<#
    This behavior is set with the global variable 
    $ErrorActionPreference. 
    By default, this variable is set to Continue, but you 
    can set several other options.
    Error behavior can also be set per command using 
    the -ErrorAction common parameter, 
    which is available to every PowerShell command.

#>

try {
    1/0 
}
catch [System.SystemException] {
    Write-Host "Cannot divid by 0"
    # $_ is the current error
    Write-Host $_.ToString()

    $_.Exception | Out-File "Errors.log" -Append
}

finally {
    Write-Host "Cleaning"
}