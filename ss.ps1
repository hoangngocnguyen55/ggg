# Test Notepad Script
Write-Host "=== TEST SCRIPT NOTEPAD ===" -ForegroundColor Green
Write-Host "Script dang chay..." -ForegroundColor Yellow

# Mở Notepad
Write-Host "Mo Notepad..." -ForegroundColor Cyan
Start-Process notepad

# Hiển thị thông báo thành công
Write-Host "Notepad da duoc mo thanh cong!" -ForegroundColor Green
Write-Host "Process ID: $((Get-Process notepad).Id)" -ForegroundColor Magenta

# Chờ 2 giây
Start-Sleep -Seconds 2

# Hiển thị danh sách process Notepad đang chạy
Write-Host "`nCac process Notepad dang chay:" -ForegroundColor Yellow
Get-Process notepad | Format-Table Id, Name, MainWindowTitle

Write-Host "`nTest hoan tat!" -ForegroundColor Green
