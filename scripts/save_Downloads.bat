@echo off
title Backup of Downloads 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Downloads\"
set "TARGET=%~dp0..\my_data\Downloads\"
set OPTIONS=/mir /r:3 /w:10 /fft /njh /unicode
set LOGFILE=..\Logbook.csv

cls
echo.
echo       _______________________________
echo.
echo            Backup of Downloads 
echo       _______________________________
echo.
echo.
echo    This script will back up your Downloads folder...
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
echo   #   #      Backup of Downloads folder succeeded.
echo    # #
echo     #            
echo ______________________________________________________________________________
echo.
echo NOTE: When finished disconnect the hard drive and store it in a separate and secure location!
pause
exit 0
