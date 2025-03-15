@echo off
echo Stopping Windows Update Services...

:: Stop Windows Update Services
net stop wuauserv
net stop bits
net stop cryptsvc
net stop msiserver

echo Renaming Windows Update Folders...

:: Rename the SoftwareDistribution and catroot2 folders
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old

echo Resetting Windows Update Components...

:: Reset Windows Update components
regsvr32 /s wuapi.dll
regsvr32 /s wuaueng.dll
regsvr32 /s wuaueng1.dll
regsvr32 /s wucltui.dll
regsvr32 /s wups2.dll
regsvr32 /s wups.dll
regsvr32 /s wuwebv.dll

echo Restarting Windows Update Services...

:: Restart the Services
net start wuauserv
net start bits
net start cryptsvc
net start msiserver

echo Windows Update Components have been reset. Please check for updates again.

pause
