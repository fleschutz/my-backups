@echo off
title Backup my drive M:...

set "SOURCE=M:\"
set "TARGET=%~dp0..\Backup_of_drive_M\"
set OPTIONS=/MIR /FFT /MT:8

echo ###################################
echo #                                 #
echo #   Backup Details for Drive M:   #
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
echo.
pause

if not exist "%TARGET%" mkdir "%TARGET%"
robocopy %SOURCE% %TARGET% %OPTIONS%
echo.
echo SUCCESS - drive M: has been backed up. See you again in the next days...
echo.
pause
exit 0