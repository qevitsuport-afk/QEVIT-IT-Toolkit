@echo off
title QEVIT IT Toolkit - Diagnostico PC
color 1F
echo ==========================================
echo        QEVIT - DIAGNOSTICO DO PC
echo ==========================================
echo.
hostname
echo.
echo ---- Windows ----
ver
echo.
echo ---- Utilizador ----
whoami
echo.
echo ---- Processador ----
wmic cpu get name 2>nul
echo.
echo ---- Memoria ----
wmic computersystem get totalphysicalmemory 2>nul
echo.
echo ---- Discos ----
wmic logicaldisk get caption,size,freespace 2>nul
echo.
pause
