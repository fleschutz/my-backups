@echo off
chcp 65001 >NUL
title ⏳ Backing up E: drive

set "SOURCE=E:\"
set "TARGET=%~dp0..\my_data\Backup_of_drive_E\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:10 /unicode
set LOGFILE=..\Logbook.csv

cls
echo.
echo       ____________________________
echo.
echo            Backup of Drive E:
echo       ____________________________
echo.
echo.
echo.
echo This script will copy your E: drive...
echo.
echo.
echo        FROM: %SOURCE%
echo.
echo          TO: %TARGET%
echo.
echo     OPTIONS: %OPTIONS% (for robocopy)
echo.
echo.
echo.
echo.
echo.
echo.
echo Hold on to start the backup... (or abort with [Ctrl] [C])
timeout 5

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup finished; >>%LOGFILE%

title ✅ Drive E: backed up
echo ✅ Drive E: backed up successfully.
echo.
echo 💡 When finished eject the drive properly and store it in a separate(!) and secure(!) location.
pause
exit 0
