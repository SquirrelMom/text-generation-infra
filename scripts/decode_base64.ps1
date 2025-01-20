param (
    [string]$inputBase64
)

$decodedBytes = [System.Convert]::FromBase64String($inputBase64)
$decodedString = [System.Text.Encoding]::UTF8.GetString($decodedBytes)
Write-Output $decodedString