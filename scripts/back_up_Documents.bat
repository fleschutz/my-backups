@echo off
title Backup of your Documents 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Documents\"
set "TARGET=%~dp0..\BACKUPS\Documents\"
set OPTIONS=/mir /r:3 /w:10 /fft /njh /unicode
set LOGFILE=..\Logbook.txt

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
echo   #   #     Documents folder backed up successfully.
echo    # #
echo     #            
echo.
timeout 10
exit 0
