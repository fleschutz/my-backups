@echo off
title Backup of your Downloads 

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Downloads\"
set "TARGET=%~dp0..\BACKUPS\Downloads\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       _____________________________________
echo.
echo            Backup of Your Downloads 
echo       _____________________________________
echo.
echo.
echo.
echo    This script will back up your Downloads folder...
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
echo   #   #     The backup of your Downloads folder is done.
echo    # #
echo     #            
echo.
pause
exit 0
