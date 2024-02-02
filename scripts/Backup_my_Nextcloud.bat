@echo off
title Backup my Nextcloud...

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Nextcloud\"
set "TARGET=%~dp0..\Backup_of_Nextcloud\"
set OPTIONS=/MIR /FFT /MT:8 /xa:o

echo ###################################
echo #                                 #
echo #   Backup the Nextcloud Folder   #
echo #                                 #
echo ###################################
echo.
echo.
echo  Source : %SOURCE%
echo.
echo  Target : %TARGET%
echo.
echo Options : %OPTIONS% (mirror data, use 8 threads)
echo.
echo    Note : double-check source and target!
echo.
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo.
echo SUCCESS - Nextcloud has been backed up. See you again in the next days...
echo.
pause
exit 0
