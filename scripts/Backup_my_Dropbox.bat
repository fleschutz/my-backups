@echo off
title Backup my Dropbox...

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Dropbox\"
set "TARGET=%~dp0..\Backup_of_Dropbox\"
set OPTIONS=/MIR /FFT /MT:8 /xa:o
set "BACKUP_HISTORY=..\Backup_History.txt"

CLS
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
echo    NOTE : check source and target before pressing [RETURN]
echo.
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE% %TIME% - %SOURCE% backed up >>%BACKUP_HISTORY%

echo.
echo         #
echo        #
echo   #   #       Dropbox folder backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
