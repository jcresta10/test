Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" | 
Where-Object { $_.Id -eq 1 -and $_.Message -like '*Invoke-WebRequest*' }


Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" | 
Where-Object { $_.Id -eq 3 -and $_.Message -like '*powershell.exe*' }