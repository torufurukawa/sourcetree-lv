@echo execfile    : %0
@echo %1
@echo %2
@echo %3
@echo %4
@echo %5
@echo %6

echo msgbox "%1::::%2::::%3",vbCritical,"title" > %TEMP%/msgboxtest.vbs & %TEMP%/msgboxtest.vbs
