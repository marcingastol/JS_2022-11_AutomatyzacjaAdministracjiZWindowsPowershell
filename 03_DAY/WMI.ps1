# Pobieranie wartosci z klas CIM/WMI

#Get-CimInstance -ClassName Win32_Service -Filter "State='Running'"

#Get-CimInstance -ClassName Win32_Directory -Filter "Name='C:\\Windows'"

#Get-CimInstance -ClassName Win32_UserAccount | Select-Object -Property SID,Name 

#Get-CimInstance -Query "SELECT * FROM Win32_Process"

#Get-CimInstance -Query "SELECT * FROM Win32_UserAccount" | Select-Object Name,SID

#Get-Service | Where-Object {$_.Status -eq "Running"} | Format-Table

#####################################################################

# Pobieranie info odnosnie klas

#Get-CimClass Win32_Process

#(Get-CimClass).CimClassName

#(Get-CimClass __NAMESPACE -Namespace root).CimClassProperties

#####################################################################

# Metody

Get-CimClass Win32_Process | Get-Member

#(Get-CimClass Win32_Process).CimClassMethods["Create"].Parameters

#Invoke-CimMethod -ClassName Win32_Process -MethodName 'Create' -Arguments @{CommandLine='notepad.exe'}

#Get-CimInstance -Query "SELECT * FROM Win32_PerfFormattedData_Counters_ThermalZoneInformation" -Namespace "root/CIMV2"