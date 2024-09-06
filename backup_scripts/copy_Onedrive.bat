@echo off
title Backup of Onedrive

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Onedrive\"
set "TARGET=%~dp0..\my_data\Onedrive\"
set OPTIONS=/mir /xa:o /r:3 /w:10 /fft /njh /unicode
set LOGFILE=..\Logbook.csv

cls
echo.
echo       _________________________________
echo.
echo              Backup of Onedrive
echo       _________________________________
echo.
echo.
echo  This script will back up your Onedrive folder...
echo.
echo.
echo.
echo      FROM : %SOURCE%
echo.
echo        TO : %TARGET%
echo.
echo   OPTIONS : robocopy %OPTIONS%
echo.
echo      NOTE : press [Return] to continue or abort with [Ctrl] [C]
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause

echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %COMPUTERNAME%; %SOURCE%; Backup finished; >>%LOGFILE%

echo ------------------------------------------------------------------------------
echo.
echo         #
echo        #
echo   #   #      Backup of Onedrive folder succeeded.
echo    # #
echo     #            
echo.
echo ------------------------------------------------------------------------------
pause
exit 0
