@echo off
title Backup of Dropbox 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Dropbox\"
set "TARGET=%~dp0..\my_data\Dropbox\"
set OPTIONS=/mir /xa:o /r:3 /w:10 /fft /njh /unicode 
set LOGFILE=..\Logbook.csv

cls
echo.
echo          _____________________________
echo.  
echo               Backup of Dropbox 
echo          _____________________________
echo.
echo.
echo  This script will back up your Dropbox folder...
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
echo   #   #      Backup of Dropbox folder succeeded.
echo    # #
echo     #            
echo ______________________________________________________________________________
pause
exit 0
