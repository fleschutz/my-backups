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
echo      NOTE : press [Return] to continue or abort with [Ctrl] [C]
echo.
echo.
echo.
echo.
echo.
pause

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup finished; >>%LOGFILE%

echo ------------------------------------------------------------------------------
echo.
echo         #
echo        #
echo   #   #      Backup of drive D: succeeded.
echo    # #
echo     #            
echo.
echo ------------------------------------------------------------------------------
pause
exit 0
