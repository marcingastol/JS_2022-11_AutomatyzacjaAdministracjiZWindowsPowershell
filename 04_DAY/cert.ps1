
# Wygenerowanie certyfikatu i zapisanie w cert:\
$var1 = @{
    Subject = "JS Sign"
    Type = "CodeSigning"
    CertStoreLocation = "Cert:\CurrentUser\My"
}

New-SelfSignedCertificate @var1
#>
# Pobranie certyfikatu
$myCert = Get-ChildItem -Path Cert:\CurrentUser\My -CodeSigningCert  | Where-Object {$_.SubjectName.Name -eq "CN=JS Sign"}

# Podpisanie pliku certem
$var2 = @{
    Certificate = $myCert
    FilePath = "C:\Users\jsystemuser1\JS_2022-11_AutomatyzacjaAdministracjiZWindowsPowershell\04_DAY\dump.ps1"
}
Set-AuthenticodeSignature @var2

Get-AuthenticodeSignature -FilePath "C:\Users\jsystemuser1\JS_2022-11_AutomatyzacjaAdministracjiZWindowsPowershell\04_DAY\dump.ps1" | Format-List


# Kopiowanie certyfikatu z przestrzeni obecnego uzytkownika do roota
$DestinationStore = "Root"
$DestinationScope = "CurrentUser"
$Type = "System.Security.Cryptography.X509Certificates.X509Store"

$var3 = @{
    TypeName = $Type
    ArgumentList = ($DestinationStore, $DestinationScope)
}

$DestinatonStoreObject = New-Object @var3
$DestinatonStoreObject.Open([System.Security.Cryptography.X509Certificates.OpenFlags]::ReadWrite)
$DestinatonStoreObject.Add($myCert)
$DestinatonStoreObject.Close()


Get-AuthenticodeSignature -FilePath dump.ps1 | Format-List


# Kopiowanie certyfikatu z przestrzeni obecnego uzytkownika do TrustedPublisher
$DestinationStore = "TrustedPublisher"
$DestinationScope = "CurrentUser"
$Type = "System.Security.Cryptography.X509Certificates.X509Store"

$var3 = @{
    TypeName = $Type
    ArgumentList = ($DestinationStore, $DestinationScope)
}

$DestinatonStoreObject = New-Object @var3
$DestinatonStoreObject.Open([System.Security.Cryptography.X509Certificates.OpenFlags]::ReadWrite)
$DestinatonStoreObject.Add($myCert)
$DestinatonStoreObject.Close()