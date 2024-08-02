@echo off
title Drive D: Backup

set "SOURCE=D:\"
set "TARGET=%~dp0..\my_data\Backup_of_drive_D\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Logbook.txt

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
echo   Options : %OPTIONS% (mirror data)
echo.
echo      NOTE : check source and target (+ free space left), then press [RETURN]
echo.
echo.
echo.
echo.
echo.
pause

echo %DATE%; %TIME%; %SOURCE%; Backup started; >>%LOGFILE%
if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo %DATE%; %TIME%; %SOURCE%; Backup finished; >>%LOGFILE%

echo.
echo         #
echo        #
echo   #   #     D: drive backed up to: %TARGET%
echo    # #
echo     #            
echo.
pause
exit 0
