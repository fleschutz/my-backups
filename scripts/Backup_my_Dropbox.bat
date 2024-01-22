@echo off

title Backup my Dropbox ...
set "SRC=%HOMEPATH%\Dropbox\"
set "DST=%~dp0\Backup_of_Dropbox\"
set OPTIONS=/MIR /FFT /MT:8

echo -----------------------------------------
echo Creating an Incremental Backup of Dropbox
echo -----------------------------------------
echo.
echo  Source : %SRC%
echo  Target : %DST%
echo Options : %OPTIONS%
echo.
pause

if not exist "%DST%" mkdir "%DST%"
robocopy %SRC% %DST% %OPTIONS%
echo.
echo SUCCESS - Dropbox has been backed up. See you again in the next days...
echo.
pause
exit 0