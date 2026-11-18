@echo off
title QEVIT - Relatorio de Drivers
set "OUT=%USERPROFILE%\Desktop\QEVIT-Drivers.txt"
echo A exportar lista de drivers para:
echo %OUT%
driverquery /v /fo csv > "%OUT%"
echo.
echo Relatorio criado no Desktop (se o comando tiver sido concluido).
pause
