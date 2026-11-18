@echo off
title QEVIT - Diagnostico de Rede
echo ==== CONFIGURACAO IP ====
ipconfig /all
echo.
echo ==== TABELA DE ROTAS ====
route print
echo.
echo ==== ARP ====
arp -a
echo.
pause
