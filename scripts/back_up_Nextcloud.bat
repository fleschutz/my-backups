@echo off
title Nextcloud Folder Backup

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Nextcloud\"
set "TARGET=%~dp0..\Backup_of_Nextcloud\"
set OPTIONS=/MIR /FFT /xa:o
set LOGFILE=..\Logbook.txt

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
echo   Options : %OPTIONS% (mirror data)
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
echo   #   #      Nextcloud folder backed up to: %TARGET%
echo    # #
echo     #            
echo.
pause
exit 0
