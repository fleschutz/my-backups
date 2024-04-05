@echo off
title Users Folder Backup

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\..\"
set "TARGET=%~dp0..\Backup_of_Users_Folder\"
set OPTIONS=/MIR /FFT
set LOGFILE=..\Backups.log

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
echo   Options : %OPTIONS% (mirror data)
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
echo   #   #      Users folder backed up. 
echo    # #
echo     #            
echo.
pause
exit 0
