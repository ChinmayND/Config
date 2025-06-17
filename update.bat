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
set "app12=Gyan.FFmpeg"
set "app13=Microsoft.WSL"
::Level-2===============================
set "app16=ArduinoSA.IDE.stable"
set "app17=AnyAssociation.Anytype"
set "app18=KiCad.KiCad"
set "app19=GodotEngine.GodotEngine"
set "app20=logseq.logseq"
set "app21=Oracle.VirtualBox"
set "APP22=VideoLAN.VLC"
set "app23=Valve.Steam"
::Level-3===============================
set "app26=Audacity.Audacity"
set "app27=KDE.Krita"
set "app28=BlenderFoundation.Blender"
set "app29=Inkscape.inksacpe"
::Level-4===============================
set "app31=KDE.KDEConnect"
set "app32=OBSProject.OBSStudio"
set "app33=VB-Audio.Voicemeeter.Potato"
::Level-9===============================
set "app36=9NQDW009T0T5" ::Omen gaming hub
set "app37=XP9B0BH6T8Z7KZ"  ::voicemod
::set "app38=9NKSQGP7F2NH" ::whatsapp

:: Total number of apps to install
set "total=40"

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
 
 shutdown /r /t 7
 {
          msgbox "I Hate GUI" ,""
         } 
exit
