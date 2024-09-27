@echo off
title Backup of Pictures

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Pictures\"
set "TARGET=%~dp0..\my_data\Pictures\"
set OPTIONS=/mir /xa:o /r:3 /w:10 /fft /njh /unicode
set LOGFILE=..\Logbook.csv

cls
echo.
echo         ____________________________________
echo.
echo                 Backup of Pictures
echo         ____________________________________
echo.
echo.
echo   This script will back up your Pictures folder...
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
echo   #   #      Backup of Pictures folder succeeded.
echo    # #
echo     #            
echo ______________________________________________________________________________
echo.
echo NOTE: When finished disconnect the hard drive and store it in a separate and secure location!
pause
exit 0
