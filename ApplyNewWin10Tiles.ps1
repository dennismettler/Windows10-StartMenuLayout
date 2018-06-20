# Copy The Customized XML File to the correct Destination
Copy-Item -Path .\LayoutExport.xml -Destination $env:LOCALAPPDATA\Microsoft\Windows\Shell\LayoutModification.xml -Force

# Delete Every Registry Key in the Cache including "tiles"
Get-ChildItem "HKCU:Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount"|
    Where Name -like "*tile*"|
        Remove-Item -Recurse -Force

# Restart Explorer.exe
Get-Process Explorer | Stop-Process
