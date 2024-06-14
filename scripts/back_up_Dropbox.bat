@echo off
title Backup of Dropbox 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Dropbox\"
set "TARGET=%~dp0..\BACKUPS\Dropbox\"
set OPTIONS=/MIR /FFT /xa:o
set LOGFILE=..\Logbook.txt

cls
echo.
echo       _____________________________
echo.
echo            Backup of Dropbox 
echo       _____________________________
echo.
echo.
echo.
echo    This script will back up your Dropbox folder...
echo.
echo         FROM : %SOURCE% 
echo.
echo           TO : %TARGET% 
echo.
echo      OPTIONS : %OPTIONS% (mirror the data)
echo.
echo         NOTE : check source and target,
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

echo.
echo         #
echo        #
echo   #   #      Backup of your Dropbox folder is done.
echo    # #
echo     #            
echo.
pause
exit 0
