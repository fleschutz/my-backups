@echo off
title Backup of drive M:

set "SOURCE=M:\"
set "TARGET=%~dp0..\Backup_of_drive_M\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Backups.log

cls
echo.
echo       __________________________
echo.
echo            Drive M: Backup
echo       __________________________
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

echo %DATE% %TIME% - Backup of %SOURCE% started... >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE% %TIME% - Backup of %SOURCE% finished. >>%LOGFILE%

echo.
echo         #
echo        #
echo   #   #       Drive M: backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
