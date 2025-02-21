@echo off
title Backup of Onedrive

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Onedrive\"
set "TARGET=%~dp0..\my_data\Onedrive\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:10 /unicode
set LOGFILE=..\Logbook.csv

cls
echo.
echo      _________________________________
echo.
echo             Backup of Onedrive
echo      _________________________________
echo.
echo.
echo.
echo This script will copy your Onedrive folder...
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
echo.
echo.
echo Press [Return] to continue or abort with [Ctrl] [C]...
pause

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup finished; >>%LOGFILE%

echo ________________________________________________________________________________________
echo.
echo         #
echo        #
echo   #   #      Onedrive folder backed up.
echo    # #
echo     #            
echo.
echo NOTE: When finished disconnect the drive and store it in a separate and secure location!
echo ________________________________________________________________________________________
echo.
pause
exit 0
