@echo off
title Backup my Nextcloud folder...

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Nextcloud\"
set "TARGET=%~dp0..\Backup_of_Nextcloud\"
set OPTIONS=/MIR /FFT /MT:8 /xa:o
set "BACKUP_HISTORY=..\Backup_History.txt"

cls
color 1F
echo.
echo       ______________________________________
echo.
echo            Backup the Nextcloud Folder
echo       ______________________________________
echo.
echo.
echo.
echo    Source : %SOURCE%
echo.
echo    Target : %TARGET%
echo.
echo   Options : %OPTIONS% (mirror data, use 8 threads)
echo.
echo      NOTE : check source and target (size) before pressing [RETURN] key.
echo.
echo.
echo.
echo.
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE% %TIME% - %SOURCE% backed up >>%BACKUP_HISTORY%

echo.
echo         #
echo        #
echo   #   #       Nextcloud folder backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
