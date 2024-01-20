@echo off
::
::  Title:      Performs an incremental backup from drive M: to D:
:: 	Author:     Markus Fleschutz
::	Copyright:  (c) 2023 Markus Fleschutz. All Rights Reserved.
::

set SRC=M:\
set DST=D:\
set OPTIONS=/MIR /j /FFT /MT:8

title Backup from %SRC% to %DST% ...
echo  Incremental backup from %SRC% to %DST% ...

robocopy %SRC% %DST% %OPTIONS%

echo Done, incremental backup from %SRC% to %DST% succeeded.
echo.
pause
exit 0
