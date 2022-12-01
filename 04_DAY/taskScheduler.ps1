#Install-Module TaskScheduler -Force -Confirm -AllowClobber
#Import-Module TaskScheduler
#(Get-Module TaskScheduler).ExportedCommands

$trigger1 =  New-ScheduledTaskTrigger -At 10:21am -Daily
$user1 = "SOMETESTORG\jsystemuser1"
$action1 = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File C:\Users\jsystemuser1\JS_2022-11_AutomatyzacjaAdministracjiZWindowsPowershell\04_DAY\dump.ps1 -ExecutionPolicy Bypass"

Register-ScheduledTask -TaskName "Name2" -Trigger $trigger1 -User $user1 -Action $action1