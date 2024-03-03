@echo off
title Users Folder Backup

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\..\"
set "TARGET=%~dp0..\Backup_of_Users_Folder\"
set OPTIONS=/MIR /FFT /MT:8
set "BACKUP_HISTORY=..\Backup_History.txt"

cls
echo.
echo       ______________________________
echo.
echo            Users Folder Backup
echo       ______________________________
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
echo   #   #      Users folder backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
