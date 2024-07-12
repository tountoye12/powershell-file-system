
function Get-DirectoryCount {
    param (
        [string]$dir
    )
    
    try {
        $listFile = Get-ChildItem  $dir  -File  -ErrorAction Stop
        Write-Host "thers is $($listfile.count) " -ForegroundColor Green 
    }
    catch {
        Write-Host "An Error occured during the executing" -ForegroundColor Cyan -BackgroundColor Yellow
        <#Do this if a terminating exception happens#>
        Write-Host $_.Exception.Message -ForegroundColor Red 
    }
}


$path = "/home/diallo/Documents/workspace/PowerShell/PowerShellFileSystem/"
    
Get-DirectoryCount -dir $path   

    
