# Windows10-StartMenuLayout
This Script sets the Windows 10 Startmenu Layout (Tiles) for the current logged in user.

There are plenty of articles about change the Windows 10 Startmenu Layout , all have in common that they only seem to work for new users logging in. This Method works with the currently logged in user. It cost me a lot of time but i'd like to share it because there was nothing in the internet so far that worked.


## Usage

### 1 - Design your Windows 10 Layout the way you like it. Just move around your tiles, ajust size and options like live-tiles.
Do not use any apps that might not be installed on the target machine. If you want to use normal win32/win64 programms make sure their installed before applying your layout. Systemapps like Calculator are fine.

### 2 - Export your Freshly new designed layout with following command:
Make sure the exported xml is called LayoutExport.xml and it is in the same directory that the powershell script.

```
Export-StartLayout -Path "C:\PathToScriptFolder\LayoutExport.xml"
```

### 3 - Execute the powershellscript as with Administrator privileges
Might work even without Administrator privileges because every relevant directory is within the users folder and HKCU
