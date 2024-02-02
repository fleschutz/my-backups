@echo off
title Backup my Downloads...

set "SOURCE=%HOMEDRIVE%%HOMEPATH%\Downloads\"
set "TARGET=%~dp0..\Backup_of_Downloads\"
set OPTIONS=/MIR /FFT /MT:8

echo ###################################
echo #                                 #
echo #   Backup the Downloads Folder   #
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
echo SUCCESS - Download folder has been backed up. See you again in the next days...
echo.
pause
exit 0
