@echo off
title Backup of Home Folder

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\"
set "TARGET=%~dp0..\BACKUPS\Home_folder\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       _______________________________
echo.
echo            Backup of Home Folder
echo       _______________________________
echo.
echo.
echo.
echo    This script will back up your Home folder...
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
echo   #   #      Your Home folder is backed up.
echo    # #
echo     #            
echo.
pause
exit 0
