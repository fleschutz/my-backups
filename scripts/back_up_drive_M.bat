@echo off
title Backup of drive M:

set "SOURCE=M:\"
set "TARGET=%~dp0..\Drive_M\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

cls
echo.
echo       ____________________________
echo.
echo            Backup of Drive M:
echo       ____________________________
echo.
echo.
echo.
echo    This script will back up drive M: ...
echo.
echo         from : %SOURCE% (your home folder)
echo.
echo           to : %TARGET% (this media)
echo.
echo with options : %OPTIONS% (mirror the data)
echo.
echo         NOTE : check source and target,
echo                then press [Return] key or abort with [Ctrl] [C].
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
echo   #   #      M: drive backed up to: %TARGET%
echo    # #
echo     #            
echo.
pause
exit 0
