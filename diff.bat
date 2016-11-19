@echo off

set REMOTE_FILENAME=%1
set REMOTE_FILENAME=%REMOTE_FILENAME:\"=%
set REMOTE=%CD%\%REMOTE_FILENAME%
echo %REMOTE%

set LOCAL=%2
set LOCAL=%LOCAL:/=\%
echo %LOCAL%

rem echo msgbox "%REMOTE%::::%LOCAL%",vbCritical,"title" > %TEMP%/msgboxtest.vbs & %TEMP%/msgboxtest.vbs
"C:\Program Files (x86)\National Instruments\Shared\LabVIEW Compare\LVCompare.exe" "%REMOTE%" "%LOCAL%"
