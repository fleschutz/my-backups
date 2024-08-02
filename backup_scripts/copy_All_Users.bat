@echo off
title Backup of All Users

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\..\"
set "TARGET=%~dp0..\my_data\All_Users\"
set OPTIONS=/mir /xa:o /r:3 /w:10 /fft /njh /unicode
set LOGFILE=..\Logbook.txt

cls
echo.
echo       ______________________________
echo.
echo            Backup of All Users
echo       ______________________________
echo.
echo.
echo  This script will back up All Users ...
echo.
echo.
echo.
echo      FROM : %SOURCE%
echo.
echo        TO : %TARGET%
echo.
echo   OPTIONS : robocopy %OPTIONS%
echo.
echo      NOTE : check everything, then press [Return] key or abort with [Ctrl] [C]
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause

echo %DATE%; %TIME%; %SOURCE%; Backup started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %SOURCE%; Backup finished; >>%LOGFILE%

echo ------------------------------------------------------------------------------
echo.
echo.
echo         #
echo        #
echo   #   #      All Users backed up successfully.
echo    # #
echo     #            
echo.
timeout 10
exit 0
