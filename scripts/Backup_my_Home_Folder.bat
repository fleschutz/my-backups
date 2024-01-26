@echo off

title Backup my Home Folder ...
set "SRC=%HOMEDRIVE%%HOMEPATH%\"
set "DST=%~dp0..\Backup_of_Home_Folder\"
set OPTIONS=/MIR /FFT /MT:8

echo ---------------------------------------------
echo Creating an Incremental Backup of Home Folder
echo ---------------------------------------------
echo.
echo  Source : %SRC%
echo  Target : %DST%
echo Options : %OPTIONS%
echo.
pause

if not exist "%DST%" mkdir "%DST%"
robocopy %SRC% %DST% %OPTIONS%
echo.
echo SUCCESS - the Home Folder has been backed up. See you again in the next days...
echo.
pause
exit 0