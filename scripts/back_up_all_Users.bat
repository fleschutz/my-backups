@echo off
title Backup of All Users

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\..\"
set "TARGET=%~dp0..\Backup_of_Users_Folder\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       ______________________________
echo.
echo            Backup of All Users
echo       ______________________________
echo.
echo.
echo    This script will back up the Users folder...
echo.
echo.
echo.
echo      FROM : %SOURCE%
echo.
echo        TO : %TARGET%
echo.
echo   OPTIONS : %OPTIONS% (mirror data)
echo.
echo      NOTE : check source and target (+ free space left), then press [RETURN]
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
echo   #   #      All users are backed up.
echo    # #
echo     #            
echo.
pause
exit 0
