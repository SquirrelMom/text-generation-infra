param (
    [string]$inputString
)

$bytes = [System.Text.Encoding]::UTF8.GetBytes($inputString)
$encodedString = [System.Convert]::ToBase64String($bytes)
Write-Output $encodedString