@echo off
title Backup my Users Folder ...

set "SRC=%HOMEDRIVE%%HOMEPATH%\..\"
set "DST=%~dp0..\Backup_of_Users_Folder\"
set OPTIONS=/MIR /FFT /MT:8

echo ---------------------------------------------
echo Creating an Incremental Backup of Home Folder
echo ---------------------------------------------
echo.
echo  Source : %SRC%
echo.
echo  Target : %DST%
echo.
echo Options : %OPTIONS%
echo.
pause

if not exist "%DST%" mkdir "%DST%"
robocopy %SRC% %DST% %OPTIONS%
echo.
echo SUCCESS - the Users Folder has been backed up. See you again in the next days...
echo.
pause
exit 0