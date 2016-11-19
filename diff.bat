@echo off
setlocal

echo msgbox "hello",vbCritical,"title" > %TEMP%/msgboxtest.vbs & %TEMP%/msgboxtest.vbs
echo msgbox "%1::::%2",vbCritical,"title" > %TEMP%/msgboxtest.vbs & %TEMP%/msgboxtest.vbs
exit

REM Clean remote file path
set REMOTE_FILENAME=%1
set REMOTE_FILENAME=%REMOTE_FILENAME:\"=%
set REMOTE=%CD%\%REMOTE_FILENAME%
echo %REMOTE%

REM Clean local file path
set LOCAL=%2
set LOCAL=%LOCAL:/=\%
echo %LOCAL%


rem echo msgbox "%REMOTE%::::%LOCAL%",vbCritical,"title" > %TEMP%/msgboxtest.vbs & %TEMP%/msgboxtest.vbs
rem "C:\Program Files (x86)\National Instruments\Shared\LabVIEW Compare\LVCompare.exe" "%REMOTE%" "%LOCAL%"
