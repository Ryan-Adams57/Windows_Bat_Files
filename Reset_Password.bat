@echo off
cls
echo ================================================
echo Reset Password for a User Account
echo ================================================

:: Ask for the username and the new password
set /p username="Enter the username: "
set /p newpassword="Enter the new password: "

echo ================================================
echo Resetting password for %username%
echo ================================================

:: Reset the password for the user
net user %username% %newpassword%

if %errorlevel% == 0 (
    echo Password for %username% has been successfully reset.
) else (
    echo Error: Could not reset password for %username%.
)

pause
