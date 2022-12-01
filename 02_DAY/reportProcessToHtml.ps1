$body = @(

    "<h1>Services</h1>"
    Get-Service | Where-Object Status -eq "Running" | ConvertTo-Html -Property Name, DisplayName -Fragment
    "<h1>Processes</h1>"
    Get-Process | Where-Object WorkingSet -gt 50MB | ConvertTo-Html -Property Name, Id, WorkingSet -Fragment

)

ConvertTo-Html -Body $body -Title ReportServicesandProcesses | Set-Content reportProcessAndService.html