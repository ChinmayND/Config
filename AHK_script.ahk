#Requires AutoHotkey v2.0

;[win+keybind]====================================================================================

 #s::#i

 #c::!f4

;[program keybind]================================================================================
 
 ;librewolf
   #B:: run "C:\Program Files\LibreWolf\librewolf.exe"

 ;Zen
   #+b:: run "C:\Program Files\Zen Browser\zen.exe"
 
 ;powershell
   #t:: run "C:\Users\chinmay\PowerShell 7.lnk"

 ;Anytype
   #n:: run "C:\Users\chinmay\AppData\Local\Programs\anytype\Anytype.exe"

 ;logseq
   #+n:: run "C:\Users\chinmay\AppData\Local\Logseq\Logseq.exe"
  
  ;notepad
   #!n:: run "C:\Windows\notepad.exe"
  
  ;vscodium
    #^n:: run "C:\Users\chinmay\AppData\Local\Programs\VSCodium\VSCodium.exe"
  
;[other keybind]==================================================================================

 capslock::esc            

 +capslock::capslock

 !z::del

 !x::backspace

 !a::+

 !s::=

 ins:: run "C:\config\Scripts\hibernate.bat"

 +ins:: run "C:\config\Scripts\sgin-on.bat"

 ^ins:: run "C:\config\Scripts\Restart.bat"

 !ins:: run "C:\config\Scripts\Shutdown.bat"

 Launch_App2:: run "C:\$Recycle.Bin\S-1-5-21-343983957-511659714-2812244289-1001"

 +Launch_App2:: run "c:\Users\chinmay\AppData\Local\Temp"
 
 !+Launch_App2:: run "c:\Windows\Temp"

;[text]===========================================================================================
 
  !f4::
         {
          msgbox "noob!" ,""
         } 

 Launch_App1::
                  {
                    msgbox "test"
                  }         