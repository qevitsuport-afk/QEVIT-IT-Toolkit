@echo off
title QEVIT - Teste Internet e DNS
echo ==== TESTE DE CONECTIVIDADE (Cloudflare DNS) ====
ping -n 4 1.1.1.1
echo.
echo ==== TESTE DE RESOLUCAO DNS ====
nslookup example.com
echo.
echo ==== TESTE HTTPS ====
powershell -NoProfile -Command "try { (Invoke-WebRequest -Uri 'https://example.com' -Method Head -TimeoutSec 10).StatusCode } catch { Write-Host 'Falha no teste HTTPS:' $_.Exception.Message }"
echo.
pause
