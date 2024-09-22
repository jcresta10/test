New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "MyBenignTask" -Value "C:\Windows\System32\notepad.exe" -PropertyType String
