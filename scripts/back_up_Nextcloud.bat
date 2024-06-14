@echo off
title Backup of your Nextcloud Folder

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Nextcloud\"
set "TARGET=%~dp0..\BACKUPS\Nextcloud\"
set OPTIONS=/MIR /FFT /xa:o
set LOGFILE=..\Logbook.txt

cls
echo.
echo       _______________________________________
echo.
echo           Backup of Your Nextcloud Folder
echo       _______________________________________
echo.
echo.
echo.
echo    This script will back up your Nextcloud folder...
echo.
echo         FROM : %SOURCE% 
echo.
echo           TO : %TARGET% 
echo.
echo      OPTIONS : %OPTIONS% (data mirroring)
echo.
echo         NOTE : check source and target,
echo                then press [Return] key or abort with [Ctrl] [C].
echo.
echo.
echo.
echo.
echo.
pause

echo [%DATE% %TIME%] - Backup started: %SOURCE% >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo [%DATE% %TIME%] - Backup finished: %SOURCE% >>%LOGFILE%

echo.
echo         #
echo        #
echo   #   #      Your Nextcloud folder is backed up.
echo    # #
echo     #            
echo.
pause
exit 0
