cmdkey /list | ForEach-Object {
  if ($_ -like "*Microsoft*") {
    cmdkey /delete:($_ -replace '^[^=]+',"" -replace "=","")
  }
}
cmdkey /list | ForEach-Object {
  if ($_ -like "*Microsoft*") {
    cmdkey /del:($_ -replace '^[^=]+',"" -replace "=","")
  }
}
cmdkey /list | ForEach-Object {if ($_ -like "*Target:*") {cmdkey /del:($_ -replace '^.+=', '')}}
cmdkey /list | ForEach-Object {if ($_ -like "*Target:*") {cmdkey /delete:($_ -replace '^.+=', '')}}
cmdkey /list | ForEach-Object {if ($_ -like "*Target:*") {cmdkey /del:($_ -replace '^.+=', '')}}
cmdkey /list | ForEach-Object {if ($_ -like "*Target:*") {cmdkey /delete:($_ -replace '^.+=', '')}}

$Credentials = (cmdkey /list | Where-Object {$_ -like "*Target=*"})
Foreach ($Target in $Credentials) {
    $Target = ($Target -split (":", 2) | Select-Object -Skip 1).substring(1)
    $Argument = "/delete:" + $Target
    Start-Process Cmdkey -ArgumentList $Argument -NoNewWindow -RedirectStandardOutput $False
    }

cmdkey /delete:MicrosoftAccount:target=SSO_POP_Device
cmdkey /delete:LegacyGeneric:target=MicrosoftOffice16_Data:ADALWAM:528b2c79-80b8-4815-8b26-526c36ca2465@@@1.000000
cmdkey /delete:LegacyGeneric:target=MicrosoftOffice16_Data:ADALWAM:528b2c79-80b8-4815-8b26-526c36ca2465
cmdkey /delete:WindowsLive:target=virtualapp/didlogical
cmdkey /delete:LegacyGeneric:target=OneDrive Cached Credential Business - Business1
cmdkey /delete:LegacyGeneric:LegacyGeneric:target=Microsoft_OneDrive_Cookies_v2_Business1_https://tvppl-my.sharepoint.com/
cmdkey /delete:LegacyGeneric:target=MicrosoftOffice16_Data:ADALWAM:9f4ad95e-ca4b-4b39-aaa4-79cc7caf63ff@@@1.000000
cmdkey /delete:LegacyGeneric:target=MicrosoftOffice16_Data:ADALWAM:9f4ad95e-ca4b-4b39-aaa4-79cc7caf63ff
cmdkey /delete:MicrosoftAccount:target=SSO_POP_Device
cmdkey /delete:FullyQualifiedDomainNameOfServe