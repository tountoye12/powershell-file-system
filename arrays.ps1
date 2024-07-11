



# $myArray = "Mamadou", "Diallo", "Gn"


# foreach($item in $myArray) {
#     Write-Host $item
# }


# $myArray[0].ToUpper()

#Another way of creating Array

$array = @("axz", "dthgs", "akka")

$array.GetType()





$tenNumbers = @(1..5)

# $tenNumbers[$tenNumbers.Length -1]

# create an empty array
[System.Collections.ArrayList]$emptyArray = [System.Collections.ArrayList]::new()

foreach ($currentItemName in $tenNumbers) {
    <# $currentItemName is the current item #>

    $emptyArray.Add($currentItemName)
}


$emptyArray

# By Default array we originally created is of a fixed 
# size. It only allows you to modify of existing elements, 
# but not the addition or removal of others. One way to 
# manage with this is to use 
# of type System.Collections.ArrayList instead of Array

# [System.Collections.ArrayList]$arrayList 

# $arrayList.Length


# $arrayList = 1..6
# $arrayList.Length

# $arrayList.Contains(5)


# [System.Collections.Hashtable]$hast = @{}

# $hast[1] = "diallo"
# $hast[2] = "diallo M"

# $hast.Remove("m")

# $hast.Count
