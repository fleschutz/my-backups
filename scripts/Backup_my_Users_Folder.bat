@echo off
title Backup my Users Folder ...

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\..\"
set "TARGET=%~dp0..\Backup_of_Users_Folder\"
set OPTIONS=/MIR /FFT /MT:8

echo ###############################
echo #                             #
echo #   Backup the Users Folder   #
echo #                             #
echo ###############################
echo.
echo  Source : %SOURCE%
echo.
echo  Target : %TARGET%
echo.
echo Options : %OPTIONS%
echo.
echo    Note : double-check source and target before pressing [RETURN]
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%

echo.
echo         #
echo        #
echo   #   #     Backup of Users folder succeeded. 
echo    # #
echo     #            
echo.
pause
exit 0
