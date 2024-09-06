@echo off
title Drive E: Backup

set "SOURCE=E:\"
set "TARGET=%~dp0..\my_data\Backup_of_drive_E\"
set OPTIONS=/MIR /FFT
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
echo    This script will back up your drive E:...
echo.
echo      FROM : %SOURCE%
echo.
echo        TO : %TARGET%
echo.
echo   OPTIONS : robocopy %OPTIONS%
echo.
echo.
echo.
echo.
echo.
echo.
echo Press [Return] to continue or abort with [Ctrl] [C]...
pause

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup finished; >>%LOGFILE%

echo ______________________________________________________________________________
echo.
echo         #
echo        #
echo   #   #      Backup of drive E: succeeded.
echo    # #
echo     #            
echo ______________________________________________________________________________
pause
exit 0
