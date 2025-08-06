@echo off
setlocal enabledelayedexpansion

:: Check if winget is installed
where winget >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] winget not found. Please install App Installer from Microsoft Store.
    pause
    exit /b
)

:: Check if configuration file exists
if not exist apps.txt (
    echo [ERROR] Configuration file apps.txt not found.
    pause
    exit /b
)

:: Start installing apps
echo Starting installation...

for /f "tokens=*" %%a in (apps.txt) do (
    set "app=%%a"
    echo Installing !app! ...
    winget install --id=!app! --silent --accept-source-agreements --accept-package-agreements
    if %errorlevel% neq 0 (
        echo [ERROR] Failed to install !app!
    )
    echo.
)

echo All installations attempted.

shutdown /r /t 7

exit
