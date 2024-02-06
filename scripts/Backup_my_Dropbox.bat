@echo off
title Backup my Dropbox...

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Dropbox\"
set "TARGET=%~dp0..\Backup_of_Dropbox\"
set OPTIONS=/MIR /FFT /MT:8 /xa:o

echo #################################
echo #                               #
echo #   Backup the Dropbox Folder   #
echo #                               #
echo #################################
echo.
echo.
echo  Source : %SOURCE%
echo.
echo  Target : %TARGET%
echo.
echo Options : %OPTIONS% (mirror data, use 8 threads)
echo.
echo    Note : double-check source and target before pressing [RETURN]
echo.
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%

echo.
echo         #
echo        #
echo   #   #     Backup of Dropbox folder succeeded. 
echo    # #
echo     #            
echo.

echo.
echo SUCCESS - Dropbox has been backed up. See you again in the next days...
echo.
pause
exit 0
