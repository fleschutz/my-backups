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
echo    Note : double-check source and target before pressing [RETURN]
echo.
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%

echo.
echo         #
echo        #
echo   #   #     Backup of Downloads folder succeeded. 
echo    # #
echo     #            
echo.
pause
exit 0
