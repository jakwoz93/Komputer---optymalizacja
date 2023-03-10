chkdsk c: /f /r
DISM.exe /ONLINE /Cleanup-image /Restorehealth
sfc /scannow