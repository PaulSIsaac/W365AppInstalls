$DownloadPath = Join-Path -Path "C:\buildArtifacts" -ChildPath "npp.8.6.7.Installer.x64.exe"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile('https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.6.7/npp.8.6.7.Installer.x64.exe', $DownloadPath) 
$Args = '/S'
Start-Process -FilePath "$DownloadPath" -ArgumentList $Args -Wait