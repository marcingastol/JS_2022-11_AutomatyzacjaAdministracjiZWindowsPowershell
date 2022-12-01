<#
"powershe.l"

"powershe*"

"powershe?ll"
#>

#"93" -match "\+"

# Kropka

<#
"tetetetetetet" -match "....." #true
"" -match "....." #false
#>

# plus & gwiazdka

<#
"tetetetet" -match "te*" #true
"tetetetet" -match "de*" #false
"tetetetet" -match "d*" #true


"tetetetet" -match "d+" #true
#>

#znak zapytania

"tetetetet" -match "ted?" #true