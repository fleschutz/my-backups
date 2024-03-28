@echo off
title Desktop Folder Backup

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Desktop\"
set "TARGET=%~dp0..\Backup_of_Desktop\"
set OPTIONS=/MIR /FFT /MT:8
set LOGFILE=..\Backups.log

cls
echo.
echo       _________________________________
echo.
echo            Desktop Folder Backup
echo       _________________________________
echo.
echo.
echo.
echo    Source : %SOURCE%
echo.
echo    Target : %TARGET%
echo.
echo   Options : %OPTIONS% (mirror data using 8 threads)
echo.
echo      NOTE : check source and target (+ free space left), then press [RETURN]
echo.
echo.
echo.
echo.
echo.
pause

echo %DATE% %TIME% - Backing up %SOURCE% ... >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE% %TIME% - ... %SOURCE% backed up. >>%LOGFILE%

echo.
echo         #
echo        #
echo   #   #     Desktop folder backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
