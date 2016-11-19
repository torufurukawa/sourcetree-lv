@echo execfile    : %0
@echo %1
@echo %2
@echo %3
@echo %4
@echo %5
@echo %6

set REMOTE=%CD%\%1
echo %REMOTE%

REM TODO \" を空文字列に置換する

REM echo msgbox "%REMOTE%::::%2::::%3",vbCritical,"title" > %TEMP%/msgboxtest.vbs & %TEMP%/msgboxtest.vbs
REM "C:\Program Files (x86)\National Instruments\Shared\LabVIEW Compare\LVCompare.exe" %1 %2
