@echo off

title Backup my Dropbox ...
set "SRC=%HOMEDRIVE%%HOMEPATH%\Dropbox\"
set "DST=%~dp0..\Backup_of_Dropbox\"
set OPTIONS=/MIR /FFT /MT:8

echo ############################################
echo #                                          #
echo #   Saving a Backup of the Dropbox Folder  #
echo #                                          #
echo ############################################
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
echo SUCCESS - Dropbox has been backed up. See you again in the next days...
echo.
pause
exit 0