@echo off
title Backup of Git Repositories

set "SOURCE=C:\Repos"
set "TARGET=%~dp0..\my_data\Repos\"
set OPTIONS=/MIR /FFT /SL /NJH /NFL /xa:o /r:3 /w:10 /unicode
set LOGFILE=..\Logbook.csv

cls
echo.
echo         ____________________________________
echo.
echo               Backup of Git Repositories
echo         ____________________________________
echo.
echo.
echo   This script will back up your Git repositories...
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
echo   #   #      Git repositories backed up.
echo    # #
echo     #            
echo.
echo NOTE: When finished disconnect the drive and store it in a separate and secure location!
echo ________________________________________________________________________________________
echo.
pause
exit 0
