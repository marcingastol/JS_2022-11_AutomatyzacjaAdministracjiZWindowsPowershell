#$ErrorActionPreference = "Silen"

function Get-ProcessLast {
    <#
    .SYNOPSIS
        Pobieranie listy ostatnio uruchomionych procesow
    .DESCRIPTION
        Pobieranie listy ostatnio uruchomionych procesow i output danych wg parametrow podanych przez uzytkownika
    .PARAMETER number
        Parameter wskazujacy na liczbe oddanych procesow
    .PARAMETER columns
        Parametr wskazujacy jakie atrybuty obiektu Get-Process wrzucic jako output
    .EXAMPLE
        Get-ProcessLast -number 10 -columns Name,Id,StartTime
        Wrzucenie najnowych 10 procesow z info Name , id i start time
    #>
    param (
        [int32]$number = 5,
        [string[]]$columns = @("Name","Id")
        #[int32]$number2 = $number * 2
        #[string]$example = Get-Process
    )

    # wylistowac procesy wg sortowania czasu, uwzgledniajac dwa podane parametry

    try {
        Get-Process | Sort-Object StartTime -Descending | Select-Object -First $number -Property $columns -ErrorAction "Ignore"
    }
    catch {
        $_.InvocationInfo.ScriptLineNumber | Format-List
    }
    finally {
        Write-Host "Koniec programu"
    }
    Write-Host "Koniec programu"

}

Get-ProcessLast -number 10 #-columns Name,Id,StartTime

#$a = Read-Host "Podaj liczbe"