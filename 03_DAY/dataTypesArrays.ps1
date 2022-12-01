# deklaracja arrays

$myArray = @()
$myArray = "aaf","asdasd","adasdfg"
$myArray = @("aaf","asdasd","adasdfg")
$myArray = @(
    "aaf"
    "asdasd"
    "adasdfg"
)

$myArray = "Hello", (Get-Date), 23.456456, 23434545

#[int32[]]$myArray = 345,546,12, $null, 567.67567

##################################################################

# manipulowanie arrays

#$myArray += "text"
#$myArray.Count

$myArray2 = "text", "text", "text"

#$myArray + $myArray2

$array = @(
    $myArray
    $myArray2
)

#$array[-4]
$array[3] = $null
#$array

# tablice wielowymiarowe

$array = @(
    @(11),
    @(14,15,16,12,45,567),
    @(17,18,19)
)
#$array[1][-1]

# hastables

$myHashtable = @{}
$myHashtable = @{ Key1="Value1"; Key2="Value2" }
$myHashtable = @{
    Key1="Value1"
    Key2="Value2"
}

#manipilacje na hashtables

$myHashtable.Add("Key3","Value3")
$myHashtable.Add("Value4","Key4")
#$myHashtable

#$myHashtable.ContainsKey("Key4")

#$myHashtable["Key1"] = "Value0"
$myHashtable.Key1 = "Value0"
#$myHashtable

#$myHashtable.Key1
#$myHashtable.Keys
#$myHashtable.Values

#$myHashtable.Remove("Key3")

foreach($a in $myHashtable.Keys) {
    
    if ($a -match "Key*"){
        Write-Host "Klucz $a zawiera $(((Get-Process) | Select -Last 5).Name) znakow. Wartosc tego klucza to $($myHashtable[$a])"
        #$myHashtable[$a] = 1
    }
    
}
$myHashtable

