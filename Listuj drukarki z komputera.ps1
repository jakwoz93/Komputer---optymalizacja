$komputer = $(Read-Host "Podaj IP lub nazwę komputera")
get-printerport -computername $komputer 
Write-Host "Press any key to continue..."
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")