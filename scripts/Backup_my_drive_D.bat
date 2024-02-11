@echo off
title Backup my drive D: ...

set "SOURCE=D:\"
set "TARGET=%~dp0..\Backup_of_drive_D\"
set OPTIONS=/MIR /FFT /MT:8
set "BACKUP_HISTORY=..\Backup_History.txt"

CLS
echo #######################
echo #                     #
echo #   Backup Drive D:   #
echo #                     #
echo #######################
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
echo   #   #     Drive D: backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
