@echo off
::
:: Performs a backup from local screenshots to drive M:
:: ================================================

set MY_BACKUP=%~dp0
set SRC=%HOMEPATH%\Pictures\Screenshots\
set DST=%MY_BACKUP%\Screenshots\
set OPTIONS=/MIR /FFT /MT:8

title Performing backup of %SRC% to %DST% ...
if not exist "%DST%" mkdir "%DST%"
robocopy  %SRC%	%DST% %OPTIONS%

echo OK - backup of %SRC% to %DST% completed.
echo.
pause
exit 0
