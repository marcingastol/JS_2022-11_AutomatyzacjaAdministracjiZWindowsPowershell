<#
Get-Item "WSMan:\localhost\Client\TrustedHosts"
Set-Item "WSMan:\localhost\Client\TrustedHosts" -Value "*"


#Sprawdzenie czy Network Category jest ustawione na Private
Get-NetConnectionProfile
#>

Enable-PSRemoting -Force