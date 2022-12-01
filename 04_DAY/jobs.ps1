$number = 1..10

foreach ($currentItemName in $number) {
    Start-Job -ScriptBlock {
        & "C:\Users\jsystemuser1\JS_2022-11_AutomatyzacjaAdministracjiZWindowsPowershell\04_DAY\jobsWorker.ps1"
        
    }
}
