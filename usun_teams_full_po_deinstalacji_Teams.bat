@echo off

echo . 
echo komenda usuwa wszystkie programu teams
echo Jak nie chcesz wykonać komendy to zamknij program
echo w przeciwnym wypadku kliknij "Enter"
set /p p=""



Rmdir /Q /S C:\Users\%username%\AppData\Roaming\Microsoft\teams\
Rmdir /Q /S C:\Users\%username%\AppData\Local\Microsoft\teams\

echo skrypt wykonany
set /p k=""