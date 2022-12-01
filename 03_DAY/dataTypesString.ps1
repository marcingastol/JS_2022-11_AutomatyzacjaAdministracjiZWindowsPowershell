$myString = "Moje pierwsze cwiczenie na tekstach"

<#
# Indeksowanie po stringach
$myString[0]
$myString[1]
$myString[-1]
#>

# Substring
<#
$myString.Substring(15)
$myString.Substring(1,5)
#>

# Split
<#
$abc = $myString.Split(", ,")
$abc.Count
$abc[3]
#>

#Replace
<#
$myString = $myString.Replace("Moje","Twoje")
$myString

$myString.Replace("moje", "Twoje", "OrdinalIgnoreCase")
#>

# Wycinanie Trim/TrimStart/TrimEnd
<#
$myString.Length
$myString = $myString.TrimEnd()
$myString.Length
#>

# Insert & Remove
#$myString.Insert(5, "nie ")
#$myString.Remove(4,9)

# wyszukiwanie tekstu - IndexOf
#$myString.IndexOf("iir")

#ToUpper/ToLower
<#
$myString.ToUpper()
$myString.ToLower()
#>

# Sprawdzenie istnienia stringa w stringu
#$myString.Contains("je")
#$myString.StartsWith("Moje")
#$myString.EndsWith("ch")