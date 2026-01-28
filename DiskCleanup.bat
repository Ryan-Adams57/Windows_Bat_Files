@echo off
:: =========================================================
:: Disk Cleanup Script
:: Author: Ryan-Adams57
:: Purpose: Comprehensive cleanup of temp files, caches, logs, and more
:: =========================================================

:: ===== Step 0: Start Message =====
echo =========================================================
echo Starting Disk Cleanup Script
echo =========================================================
echo.

:: ===== Step 1: Delete Windows Temporary Files =====
echo [Step 1] Cleaning Windows Temp files...
if exist "%TEMP%" (
    del /s /q "%TEMP%\*.*"
    echo Temporary files deleted.
) else (
    echo Temp folder not found.
)
echo.

:: ===== Step 2: Clear Recycle Bin =====
echo [Step 2] Emptying Recycle Bin...
if exist C:\$Recycle.Bin (
    rd /s /q C:\$Recycle.Bin
    echo Recycle Bin emptied.
) else (
    echo Recycle Bin not found or already empty.
)
echo.

:: ===== Step 3: Remove Windows Prefetch Files =====
echo [Step 3] Cleaning Prefetch folder...
if exist C:\Windows\Prefetch (
    del /s /q C:\Windows\Prefetch\*.*
    echo Prefetch folder cleaned.
) else (
    echo Prefetch folder not found.
)
echo.

:: ===== Step 4: Clear System Log Files =====
echo [Step 4] Removing Windows Logs...
if exist C:\Windows\Logs (
    del /s /q C:\Windows\Logs\*.*
    echo Log files removed.
) else (
    echo Logs folder not found.
)
echo.

:: ===== Step 5: Clear Internet Explorer Cache (if exists) =====
echo [Step 5] Cleaning Internet Explorer Cache...
if exist "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache" (
    del /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\*.*"
    echo IE cache cleared.
) else (
    echo IE Cache folder not found.
)
echo.

:: ===== Step 6: Clear Windows Update Cache =====
echo [Step 6] Removing Windows Update Cache...
if exist C:\Windows\SoftwareDistribution\Download (
    del /s /q C:\Windows\SoftwareDistribution\Download\*.*
    echo Windows Update cache cleared.
) else (
    echo Windows Update cache folder not found.
)
echo.

:: ===== Step 7: Clear Microsoft Edge/Chrome Cache (Optional) =====
echo [Step 7] Clearing Edge/Chrome cache (optional)...
:: Edge cache
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" (
    del /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*.*"
    echo Edge cache cleared.
)
:: Chrome cache
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
    del /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"
    echo Chrome cache cleared.
)
echo.

:: ===== Step 8: Remove Recent Files List =====
echo [Step 8] Clearing Recent Files list...
if exist "%APPDATA%\Microsoft\Windows\Recent" (
    del /s /q "%APPDATA%\Microsoft\Windows\Recent\*.*"
    echo Recent files list cleared.
)
echo.

:: ===== Step 9: Optional Custom Cleanup =====
echo [Step 9] Optional cleanup...
:: Example: del /s /q "C:\Users\%USERNAME%\Downloads\*.tmp"
:: Add any additional directories you want cleaned
echo Optional cleanup complete.
echo.

:: ===== Step 10: System Check =====
echo [Step 10] Checking free disk space...
wmic logicaldisk get size,freespace,caption
echo Disk space check complete.
echo.

:: ===== Completion Message =====
echo =========================================================
echo Disk Cleanup Completed Successfully!
echo Author: Ryan-Adams57
echo =========================================================
pause

