@echo off
setlocal enabledelayedexpansion

:: ==========================================
:: List your Winget app IDs here, one per line
:: ==========================================

::Level1=====================================
set "app1=microsoft.appinstaller"
set "app2=microsoft.powershell" 
set "app3=AutoHotkey.AutoHotkey"
set "app4=sxyazi.yazi"
set "app5=valinet.ExplorerPatcher"
set "app6=zyedidia.micro"
set "app7=Microsoft.PowerToys"
set "app9=glzr-io.zebar"
set "app8=glzr-io.glazewm"
set "app10=Fastfetch-cli.Fastfetch"
set "app11=RaspberryPiFoundation.RaspberryPiImager"
::Level-2===============================
set "app12=ArduinoSA.IDE.stable"
set "app13=AnyAssociation.Anytype"
set "app14=KiCad.KiCad"
set "app15=logseq.logseq"
set "app16=Oracle.VirtualBox"
set "APP17=VideoLAN.VLC"
set "app18=Valve.Steam"
::Level-3===============================
set "app19=Audacity.Audacity"
set "app20=KDE.Krita"
set "app21=BlenderFoundation.Blender"
set "app22=Inkscape.inksacpe"
::Level-4===============================
set "app23=KDE.KDEConnect"
set "app24=OBSProject.OBSStudio"
set "app25=VB-Audio.Voicemeeter.Potato"
::Level-9===============================
set "app26=9NQDW009T0T5" ::Omen gaming hub
set "app27=XP9B0BH6T8Z7KZ"  ::voicemod
set "app28=9NKSQGP7F2NH" ::whatsapp

:: Total number of apps to install
set "total=28"

:: ==========================================
:: Check if winget is installed
:: ==========================================

where winget >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] winget not found. Please install App Installer from Microsoft Store.
    pause
    exit /b
)

:: ==========================================
:: Start installing apps
:: ==========================================

echo Starting installation...

for /L %%i in (1,1,%total%) do (
    call set "app=%%app%%i%%"
    echo Installing !app! ...
    winget install --id=!app! --silent --accept-source-agreements --accept-package-agreements
    echo.
)

echo All installations attempted.
 
 shutdown -r -t 2
exit
