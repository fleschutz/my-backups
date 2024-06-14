@echo off
title Drive E: Backup

set "SOURCE=E:\"
set "TARGET=%~dp0..\Backup_of_drive_E\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       ____________________________
echo.
echo            Backup of Drive E:
echo       ____________________________
echo.
echo.
echo.
echo    This script will back up your drive E:...
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
echo   #   #      The backup of drive E: is done.
echo    # #
echo     #            
echo.
pause
exit 0
