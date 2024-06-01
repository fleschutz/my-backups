@echo off
title Backup of Nextcloud Folder

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Nextcloud\"
set "TARGET=%~dp0..\BACKUPS\Nextcloud\"
set OPTIONS=/MIR /FFT /xa:o
set LOGFILE=..\Logbook.txt

cls
echo.
echo       ___________________________________
echo.
echo            Backup of Nextcloud Folder
echo       ____________________________________
echo.
echo.
echo.
echo    This script will back up the Nextcloud folder...
echo.
echo         from : %SOURCE% (your home folder)
echo.
echo           to : %TARGET% (this media)
echo.
echo with options : %OPTIONS% (mirror the data)
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
echo   #   #      Nextcloud folder backed up.
echo    # #
echo     #            
echo.
pause
exit 0
