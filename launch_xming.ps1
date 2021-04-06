$wsl_ip_address = & wsl --exec --% ip -4 address show dev eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'
Set-Content -Path "$env:ProgramFiles\\Xming\\X0.hosts" -Encoding ASCII -Value "localhost","inet6:localhost",$wsl_ip_address
Start-Process -FilePath "$env:ProgramFiles\\Xming\\Xming.exe" -ArgumentList ":0 -clipboard -multiwindow -nolisten inet6"
