@echo off
title QEVIT - Relatorio Tecnico
set "OUT=%USERPROFILE%\Desktop\QEVIT-Relatorio-%COMPUTERNAME%.txt"
echo A gerar relatorio...
(
echo ==== QEVIT IT TOOLKIT - RELATORIO ====
echo Data: %DATE% %TIME%
echo PC: %COMPUTERNAME%
echo Utilizador: %USERNAME%
echo.
echo ==== WINDOWS ====
ver
echo.
echo ==== SYSTEMINFO ====
systeminfo
echo.
echo ==== IP CONFIG ====
ipconfig /all
echo.
echo ==== DISCOS ====
wmic logicaldisk get caption,size,freespace
) > "%OUT%" 2>&1
echo.
echo Relatorio guardado em:
echo %OUT%
pause
