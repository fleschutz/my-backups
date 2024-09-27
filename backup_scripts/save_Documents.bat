@echo off
title Backup of your Documents 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Documents\"
set "TARGET=%~dp0..\my_data\Documents\"
set OPTIONS=/mir /r:3 /w:10 /fft /njh /unicode
set LOGFILE=..\Logbook.csv

cls
echo.
echo       _______________________________
echo.
echo            Backup of Documents 
echo       _______________________________
echo.
echo.
echo    This script will back up your Documents folder...
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
echo   #   #      Backup of Documents folder succeeded.
echo    # #
echo     #            
echo ______________________________________________________________________________
echo.
echo NOTE: When finished disconnect the hard drive and store it in a separate and secure location!
pause
exit 0
