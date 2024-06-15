@echo off
title Backup of Dropbox 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Dropbox\"
set "TARGET=%~dp0..\BACKUPS\Dropbox\"
set OPTIONS=/mir /xa:o /r:3 /w:10 /fft /njh /unicode 
set LOGFILE=..\Logbook.txt

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
echo         FROM : %SOURCE% 
echo.
echo           TO : %TARGET% 
echo.
echo      OPTIONS : robocopy %OPTIONS%
echo.
echo         NOTE : check everything,
echo                then press [Return] key or abort with [Ctrl] [C].
echo.
echo.
echo.
echo.
echo.
pause

echo [%DATE% %TIME%] - Backup started: %SOURCE% >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo [%DATE% %TIME%] - Backup finished: %SOURCE% >>%LOGFILE%

echo ------------------------------------------------------------------------------
echo.
echo.
echo         #
echo        #
echo   #   #      Dropbox folder backed up successfully.
echo    # #
echo     #            
echo.
timeout 10
exit 0
