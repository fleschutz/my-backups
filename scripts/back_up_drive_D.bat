@echo off
title Drive D: Backup

set "SOURCE=D:\"
set "TARGET=%~dp0..\Backup_of_drive_D\"
set OPTIONS=/MIR /FFT /MT:8
set "BACKUP_HISTORY=..\Backup_History.txt"

cls
echo.
echo       _________________________
echo.
echo            Drive D: Backup
echo       _________________________
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
echo %DATE% %TIME% - %SOURCE% drive backed up >>%BACKUP_HISTORY%

echo.
echo         #
echo        #
echo   #   #     Drive D: backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
