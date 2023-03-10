write-host
$starykomputer = $(Read-Host "IP/hostname dawcy")
get-printerport -computername $starykomputer 
write-host
$drukarka = $(Read-Host "Podaj IP lub nazwę drukarki")
write-host
$nowykomputer = $(Read-Host "IP/hostname odbiorcy")
write-host
$Nazwadrukarki = $(Read-Host "Podaj nazwę drukarki")
add-printerport -computername $nowykomputer -Name $drukarka -PrinterHostAddress $drukarka
Add-Printer -computername $nowykomputer -Name "$Nazwadrukarki" -DriverName "Microsoft PCL6 Class Driver" -PortName "$drukarka"