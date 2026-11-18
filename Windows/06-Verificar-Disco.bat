@echo off
title QEVIT - Verificar Discos
echo ==== VOLUMES E ESPACO DISPONIVEL ====
powershell -NoProfile -Command "Get-Volume | Select-Object DriveLetter,FileSystemLabel,FileSystem,HealthStatus,@{Name='TamanhoGB';Expression={[math]::Round($_.Size/1GB,2)}},@{Name='LivreGB';Expression={[math]::Round($_.SizeRemaining/1GB,2)}} | Format-Table -AutoSize"
echo.
echo CHKDSK sera executado apenas em modo de consulta (sem reparacoes).
echo.
choice /c SN /m "Executar chkdsk sem parametros de reparacao? (S/N)"
if errorlevel 2 exit /b
chkdsk
echo.
pause
