@echo off
title Backup of your Documents 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Documents\"
set "TARGET=%~dp0..\BACKUPS\Documents\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       ____________________________________
echo.
echo            Backup of Your Documents 
echo       ____________________________________
echo.
echo.
echo.
echo    This script will back up your Documents folder...
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
echo   #   #     Your documents are backed up.
echo    # #
echo     #            
echo.
pause
exit 0
