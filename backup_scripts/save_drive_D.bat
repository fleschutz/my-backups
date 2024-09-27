@echo off
title Drive D: Backup

set "SOURCE=D:\"
set "TARGET=%~dp0..\my_data\Backup_of_drive_D\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.csv

cls
echo.
echo       _________________________
echo.
echo            Drive D: Backup
echo       _________________________
echo.
echo.
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
echo   #   #      Backup of drive D: succeeded.
echo    # #
echo     #            
echo ______________________________________________________________________________
echo.
echo NOTE: When finished disconnect the hard drive and store it in a separate and secure location!
pause
exit 0
