@echo off
title Documents Folder Backup

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Documents\"
set "TARGET=%~dp0..\Backup_of_Documents\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       ___________________________________
echo.
echo            Documents Folder Backup
echo       ___________________________________
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
echo   #   #     Documents folder backed up to: %TARGET%
echo    # #
echo     #            
echo.
pause
exit 0
