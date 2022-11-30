

$a = Get-Content .\reportToJson.json | ConvertFrom-Json 

$a.keyInt = 0

$a | Add-Member -Type NoteProperty -Name "keyNew0" -Value "ValueNew"
$a | Add-Member -Type NoteProperty -Name "keyNew11" -Value "ValueNew1"
$a | Add-Member -Type NoteProperty -Name "keyNew21" -Value "ValueNew2"

$a | ConvertTo-Json | Set-Content .\reportToJson.json 



#Get-Date | ConvertTo-Json | ConvertFrom-Json