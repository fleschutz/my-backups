@echo off
title Nextcloud Folder Backup

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Nextcloud\"
set "TARGET=%~dp0..\Backup_of_Nextcloud\"
set OPTIONS=/MIR /FFT /MT:8 /xa:o
set LOGFILE=..\Backups.log

cls
echo.
echo       __________________________________
echo.
echo            Nextcloud Folder Backup
echo       __________________________________
echo.
echo.
echo.
echo    Source : %SOURCE%
echo.
echo    Target : %TARGET%
echo.
echo   Options : %OPTIONS% (mirror data using 8 threads)
echo.
echo      NOTE : check source and target (+ free space left), then press [RETURN]
echo.
echo.
echo.
echo.
echo.
pause

echo %DATE% %TIME% - Backing up %SOURCE% ... >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE% %TIME% - ... %SOURCE% backed up. >>%LOGFILE%

echo.
echo         #
echo        #
echo   #   #       Nextcloud folder backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
