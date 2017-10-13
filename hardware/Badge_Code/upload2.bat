@echo off
:again
\Python27\python.exe uduck_upload_cbs.py bSidesPayload_9-27-17.txt --firmware bSidesBadge.hex
echo CTRL-C to exit, or
pause
goto :again
