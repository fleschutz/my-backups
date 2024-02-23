@echo off
title Backup my drive M:...

set "SOURCE=M:\"
set "TARGET=%~dp0..\Backup_of_drive_M\"
set OPTIONS=/MIR /FFT /MT:8
set "BACKUP_HISTORY=..\Backup_History.txt"

cls
color 1F
echo.
echo       __________________________
echo.
echo            Backup Drive M:
echo       __________________________
echo.
echo.
echo.
echo    Source : %SOURCE%
echo.
echo    Target : %TARGET%
echo.
echo   Options : %OPTIONS% (mirror data, use 8 threads)
echo.
echo      NOTE : check source and target (size) before pressing [RETURN] key.
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
echo   #   #       Drive M: backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
