@echo off
title Backup of Home Folder

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\"
set "TARGET=%~dp0..\my_data\Home_Folder\"
set OPTIONS=/mir /xa:o /r:3 /w:10 /fft /njh /unicode
set LOGFILE=..\Logbook.csv

cls
echo.
echo         _______________________________
echo.
echo              Backup of Home Folder
echo         _______________________________
echo.
echo.
echo   This script will back up your Home folder...
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
echo   #   #      Home folder backed up.
echo    # #
echo     #            
echo.
echo NOTE: When finished disconnect the drive and store it in a separate and secure location!
echo ________________________________________________________________________________________
echo.
pause
exit 0