@echo off
::
:: Performs a backup from local Dropbox to drive M:
:: ================================================

set SRC=C:\Users\Markus\Dropbox\
set DST=M:\Backup\data\Dropbox\
set OPTIONS=/MIR /FFT /MT:8

title Performing backup of %SRC% to %DST% ...
robocopy  %SRC%	%DST% %OPTIONS%

echo OK - backup of %SRC% to %DST% completed.
echo.
pause
exit 0
