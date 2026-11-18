# QEVIT IT Toolkit - Informacoes de Hardware
# Script de leitura: mostra um resumo do hardware e do Windows.

Write-Host "===== QEVIT: RESUMO DO SISTEMA =====" -ForegroundColor Cyan
Get-CimInstance Win32_ComputerSystem |
    Select-Object Manufacturer, Model, @{N="RAM_GB";E={[math]::Round($_.TotalPhysicalMemory/1GB,2)} |
    Format-List

Write-Host "`n===== PROCESSADOR =====" -ForegroundColor Cyan
Get-CimInstance Win32_Processor |
    Select-Object Name, NumberOfCores, NumberOfLogicalProcessors |
    Format-List

Write-Host "`n===== WINDOWS =====" -ForegroundColor Cyan
Get-CimInstance Win32_OperatingSystem |
    Select-Object Caption, Version, BuildNumber, OSArchitecture |
    Format-List

Write-Host "`n===== DISCOS =====" -ForegroundColor Cyan
Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
    Select-Object DeviceID,
        @{N="Tamanho_GB";E={[math]::Round($_.Size/1GB,2)}},
        @{N="Livre_GB";E={[math]::Round($_.FreeSpace/1GB,2)}} |
    Format-Table -AutoSize

Write-Host "`nConsulta concluida." -ForegroundColor Green
