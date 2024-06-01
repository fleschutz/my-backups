@echo off
title Backup of Dropbox Folder

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Dropbox\"
set "TARGET=%~dp0..\BACKUPS\Dropbox\"
set OPTIONS=/MIR /FFT /xa:o
set LOGFILE=..\Logbook.txt

cls
echo.
echo       _________________________________
echo.
echo            Backup of Dropbox Folder
echo       _________________________________
echo.
echo.
echo.
echo    This script will back up the Desktop folder...
echo.
echo         from : %SOURCE% (your home folder)
echo.
echo           to : %TARGET% (this media)
echo.
echo with options : %OPTIONS% (mirror the data)
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
echo   #   #      Dropbox folder backed up to: %TARGET%
echo    # #
echo     #            
echo.
pause
exit 0
