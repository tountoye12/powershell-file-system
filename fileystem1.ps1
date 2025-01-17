

# Using PowerShell commnads to create a new file
$Lcoation  = "files"

New-Item -Path $Lcoation -Name "file1.txt" -ItemType File


# Using PowerShell commnads to create a new 
#file if folder is not there
$newPath = "test"

New-Item -Path $newPath "file.txt" -ItemType File -Force


# Using PowerShell commnads to delete a file

Remove-Item -Path ./files/file1.txt


# Using Add-Content cmdlet 
#you can append data to a text/html file.

Add-Content ./files/file.txt "Hello powershell"

# retriving content from a file
Get-Content ./files/file.txt | Write-Host


# powershell export to csv
Get-Command | Export-Csv commands.csv