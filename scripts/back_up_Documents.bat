@echo off
title Backup of Documents Folder

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Documents\"
set "TARGET=%~dp0..\BACKUPS\Documents\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       ____________________________________
echo.
echo            Backup of Documents Folder
echo       ____________________________________
echo.
echo.
echo.
echo    This script will back up the Documents folder...
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
echo   #   #     Documents folder backed up.
echo    # #
echo     #            
echo.
pause
exit 0
