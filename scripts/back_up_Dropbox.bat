@echo off
title Dropbox Folder Backup

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Dropbox\"
set "TARGET=%~dp0..\Backup_of_Dropbox\"
set OPTIONS=/MIR /FFT /xa:o
set LOGFILE=..\Backups.log

cls
echo.
echo       _________________________________
echo.
echo            Dropbox Folder Backup
echo       _________________________________
echo.
echo.
echo.
echo    Source : %SOURCE%
echo.
echo    Target : %TARGET%
echo.
echo   Options : %OPTIONS% (mirror data)
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
echo   #   #       Dropbox folder backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
