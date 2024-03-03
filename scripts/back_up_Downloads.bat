@echo off
title Downloads Folder Backup

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Downloads\"
set "TARGET=%~dp0..\Backup_of_Downloads\"
set OPTIONS=/MIR /FFT /MT:8
set "BACKUP_HISTORY=..\Backup_History.txt"

cls
echo.
echo       ___________________________________
echo.
echo            Downloads Folder Backup
echo       ___________________________________
echo.
echo.
echo.
echo    Source : %SOURCE%
echo.
echo    Target : %TARGET%
echo.
echo   Options : %OPTIONS% (mirror data, use 8 threads)
echo.
echo      NOTE : check source and target (+ free space left), then press [RETURN]
echo.
echo.
echo.
echo.
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE% %TIME% - %SOURCE% backed up >>%BACKUP_HISTORY%

echo.
echo         #
echo        #
echo   #   #     Downloads folder backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
