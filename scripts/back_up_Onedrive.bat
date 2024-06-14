@echo off
title Backup of Your Onedrive Folder 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Onedrive\"
set "TARGET=%~dp0..\BACKUPS\Onedrive\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       _________________________________
echo.
echo         Backup of Your Onedrive Folder
echo       _________________________________
echo.
echo.
echo.
echo    This script will back up your Onedrive folder...
echo.
echo      FROM : %SOURCE%
echo.
echo        TO : %TARGET%
echo.
echo   OPTIONS : %OPTIONS% (mirror data)
echo.
echo      NOTE : check source and target (+ free space left), then press [RETURN]
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
echo   #   #      Your Onedrive folder is backed up.
echo    # #
echo     #            
echo.
pause
exit 0
