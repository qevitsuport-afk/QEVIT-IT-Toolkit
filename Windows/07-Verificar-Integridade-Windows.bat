@echo off
title QEVIT - Integridade Windows
echo Este procedimento verifica e pode tentar reparar componentes do Windows.
echo Pode demorar. Recomenda-se executar como Administrador.
echo.
choice /c SN /m "Continuar? (S/N)"
if errorlevel 2 exit /b
echo.
DISM /Online /Cleanup-Image /CheckHealth
echo.
echo A iniciar SFC...
sfc /scannow
echo.
echo Se persistirem problemas, consulte a documentacao oficial Microsoft
echo para os comandos DISM RestoreHealth e SFC.
pause
