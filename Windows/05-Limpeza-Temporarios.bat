@echo off
title QEVIT - Limpeza de Temporarios
echo Este script apaga ficheiros temporarios do utilizador.
echo Aplicacoes abertas podem estar a utilizar alguns ficheiros.
echo.
choice /c SN /m "Deseja continuar? (S/N)"
if errorlevel 2 exit /b
echo.
del /f /q "%TEMP%\*" 2>nul
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" 2>nul
echo Limpeza concluida. Alguns ficheiros bloqueados foram ignorados.
pause
