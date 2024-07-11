<#


Using pipelines
Most PowerShell cmdlets are designed to support pipelines. 
In most cases, you can pipe the results of a Get cmdlet to another 
cmdlet of the same noun. For example, you can pipe 
the output of the Get-Service cmdlet to 
the Start-Service or Stop-Service cmdlets.
#>

<#
    This example shows how to sort all the processes on 
    the computer by the number of open handles in each process.
#>

function Get-Pipe {
    
    Get-Process | Where-Object -Property HandleCount -gt 100 | 
    Sort-Object -Property Handle | ConvertTo-Json |
    Set-Content -Path "process.json"
}
Get-Pipe


$process = Get-Process
 
Ft -InputObject $process -Property ProcessName


(Get-Process) | Get-Member

# or  this is behinding an object
Get-Member -InputObject (Get-Process).HandleCount

# Get all process where the process name is  Brave
Get-Process | Where-Object ProcessName -eq 'brave'


# Get all process including the UserName where the process name is  Brave
Get-Process -IncludeUserName | 
    Where-Object ProcessName -eq 'brave' |
        Sort-Object UserProcessorTime


