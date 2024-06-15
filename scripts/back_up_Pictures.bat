@echo off
title Backup of Pictures

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Pictures\"
set "TARGET=%~dp0..\BACKUPS\Pictures\"
set OPTIONS=/mir /xa:o /r:3 /w:10 /fft /njh /unicode
set LOGFILE=..\Logbook.txt

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
echo         FROM : %SOURCE% 
echo.
echo           TO : %TARGET% 
echo.
echo      OPTIONS : robocopy %OPTIONS%
echo.
echo         NOTE : check everything, then press [Return] key or abort with [Ctrl] [C]
echo.
echo.
echo.
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
echo   #   #     Pictures folder backed up successfully.
echo    # #
echo     #            
echo.
timeout 10
exit 0
