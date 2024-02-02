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
echo    Note : double-check source and target!
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo.
echo SUCCESS - the Users Folder has been backed up. See you again in the next days...
echo.
pause
exit 0
