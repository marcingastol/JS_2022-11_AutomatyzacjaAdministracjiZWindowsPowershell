##################################
# Conditional expressions

<#
$value = 5

if ($value -eq 6) {
    Write-Host $true
}
else {
    Write-Host $false
}
#>

##################################
# Loops - Foreach

#$processes = Get-Process | Select -First 10

<#
foreach ($process in Get-Process | Select -First 10) {
    Write-Host $process.Name
}
#>

##################################
# Loops - For

<#
$processes = Get-Process | Select -First 20


for ($i = 0; $i -lt $processes.Count; $i++) {
    
    
    if ($processes[$i].Name -ne "Code")
    {
        break
    }
    Write-Host $processes[$i].Name
}

Write-Host "Koniec"
#>
<#
for ($i = $processes.Count - 1; $i -ge 0; $i--) {
    Write-Host $processes[$i].Name
}
#>

##################################
# Loops - Do until / while

<#
do {
    Write-Host "Plik jeszcze nie istnieje"
    Start-Sleep -Seconds 2
} until (Test-Path test.txt -PathType Leaf)

do {
    Write-Host "Plik jeszcze nie istnieje"
    Start-Sleep -Seconds 2
} while (-not(Test-Path test.txt -PathType Leaf))
#>

##################################
# Loops - While

<#
while (-not(Test-Path test.txt -PathType Leaf)) {
    Write-Host "Plik jeszcze nie istnieje"
    Start-Sleep -Seconds 2
}
#>