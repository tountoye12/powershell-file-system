

Get-Process -Name zsh | ft Id, ProcessName, PagedMemorySize


<#
Complex process manipulation is possible by using some of the object 
filtering cmdlets. Because a Process object has a Responding property 
that's true when it's no longer responding, 
you can stop all nonresponsive applications with the following command:

#>

$noRespondingProcess = Get-Process | Where-Object -FilterScript {$_.Responding -eq $false}

# Then we can stop all of them

# $noRespondingProcess | Stop-Process -Confirm



