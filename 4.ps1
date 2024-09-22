
Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" | 
Where-Object { $_.Id -eq 13 -and $_.Message -like '*Software\Microsoft\Windows\CurrentVersion\Run*' }
