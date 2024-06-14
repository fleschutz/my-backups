@echo off
title Backup of Pictures Folder

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Pictures\"
set "TARGET=%~dp0..\BACKUPS\Pictures\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo         ____________________________________
echo.
echo              Backup of Pictures Folder
echo         ____________________________________
echo.
echo.
echo    This script will back up your Pictures folder...
echo.
echo         FROM : %SOURCE% 
echo.
echo           TO : %TARGET% 
echo.
echo      OPTIONS : %OPTIONS% (data mirroring)
echo.
echo         NOTE : check source and target,
echo                then press [Return] key or abort with [Ctrl] [C]
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
echo   #   #     Your Pictures folder is backed up.
echo    # #
echo     #            
echo.
pause
exit 0
