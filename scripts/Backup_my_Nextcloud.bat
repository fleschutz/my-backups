@echo off
title Backup my Nextcloud...

set "SRC=%HOMEDRIVE%%HOMEPATH%\Nextcloud\"
set "DST=%~dp0..\Backup_of_Nextcloud\"
set OPTIONS=/MIR /FFT /MT:8 /xa:o

echo ##############################################
echo #                                            #
echo #   Saving a Backup of the Nextcloud Folder  #
echo #                                            #
echo ##############################################
echo.
echo.
echo  Source : %SRC%
echo.
echo  Target : %DST%
echo.
echo Options : %OPTIONS% (mirror data, use 8 threads)
echo.
echo.
pause

if not exist "%DST%" mkdir "%DST%"
robocopy %SRC% %DST% %OPTIONS%
echo.
echo SUCCESS - Nextcloud has been backed up. See you again in the next days...
echo.
pause
exit 0