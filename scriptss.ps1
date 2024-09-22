Write-Output "This is a benign script. Not malicious. Developed by Jatin Shrestha."

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/jcresta10/test/main/benignscript.ps1" -OutFile "C:\Users\Public\benignscript.ps1"
powershell -ExecutionPolicy Bypass -File "C:\Users\Public\benignscript.ps1"

New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "MyBenignTask" -Value "C:\Windows\System32\notepad.exe" -PropertyType String

Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" | 
Where-Object { $_.Id -eq 3 -and $_.Message -like '*powershell.exe*' }

Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" | 
Where-Object { $_.Id -eq 1 } | 
Select-Object -First 10


Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" | 
Where-Object { $_.Id -eq 3 } | 
Select-Object -First 10

Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" | 
Where-Object { $_.Id -eq 13 } | 
Select-Object -First 10
