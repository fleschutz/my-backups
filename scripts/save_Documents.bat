@echo off
chcp 65001 >NUL
title ⏳ Backing up Documents

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Documents\"
set "TARGET=%~dp0..\DATA\Documents\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:10 /unicode
set LOGFILE=..\DATA\Logbook.csv

cls
echo.
echo       _______________________________
echo.
echo            Backup of Documents 
echo       _______________________________
echo.
echo.
echo.
echo This script will copy your Documents folder...
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

title ✅ Backup succeeded
echo ✅ Your Documents folder is backed up.
echo.
echo 💡 When finished eject the drive properly and store it in a separate(!) and secure(!) location.
pause
exit 0
