; REMOVED: #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.


;*****************************Application********************************
;*************************WINDOWS KEY + SHIFT****************************


;Open Notepad
#+n::
{ ; V1toV2: Added bracket
Run("Notepad")
Return

;Open Goole Chrome
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+g::
{ ; V1toV2: Added bracket
Run(A_ProgramFiles "\Google\Chrome\Application\chrome.exe")
Return

;Open VS code
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+v::
{ ; V1toV2: Added bracket
Run("C:\Users\Nibir\AppData\Local\Programs\Microsoft VS Code\Code.exe")
Return

;Open MS Word
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+w:: ;
{ ; V1toV2: Added bracket
Run("C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE")
Return

;Open MS Excel
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+x::
;Run, %A_ProgramFiles%\Microsoft Office\root\Office16\EXCEL.EXE
;Return
{ ; V1toV2: Added bracket
ex :=ComObject("Excel.Application")
ex.visible := True
ex.Workbooks.Add
Return

;Open MS Access
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+a::
{ ; V1toV2: Added bracket
Run("C:\Program Files (x86)\Microsoft Office\root\Office16\MSACCESS.EXE")
Return

;Open PowerBI
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+b::
{ ; V1toV2: Added bracket
Run("C:\Program Files\Microsoft Power BI Desktop\bin\PBIDesktop.exe")
Return

;Open EveryThing
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+e::
{ ; V1toV2: Added bracket
Run("C:\Program Files\Everything\Everything.exe")
Return

;Open ShareX
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+s::
{ ; V1toV2: Added bracket
Run("C:\Program Files\ShareX\ShareX.exe")
Return

;***************************Windows Terminal***************************
;******************************Windows + T*****************************
;Open Windows Terminal
} ; V1toV2: Added Bracket before hotkey or Hotstring
#+t::
{ ; V1toV2: Added bracket
Run("WT")
Return

;********************************Website********************************
;******************************CTRL + SHIFT*****************************


;Youtube
} ; V1toV2: Added Bracket before hotkey or Hotstring
^+y::
{ ; V1toV2: Added bracket
Run("https://www.youtube.com/")
Return

;Facebook
} ; V1toV2: Added Bracket before hotkey or Hotstring
^+f::
{ ; V1toV2: Added bracket
Run("https://www.facebook.com/")
Return


;********************************Website********************************
;***************************CTRL + SHIFT + ALT**************************

;Open Rammap
} ; V1toV2: Added Bracket before hotkey or Hotstring
^+!r::
{ ; V1toV2: Added bracket
Run("D:\04_Backup\Software\Applications\00_live\RAMMap\RAMMap64.exe")
Return


;********************************Folder*********************************
;******************************CTRL + ALT*******************************
} ; V1toV2: Added Bracket before hotkey or Hotstring


^!t::
{ ; V1toV2: Added bracket
Run("D:\Gallary\04_Tutorials")
Return
} ; V1toV2: Added Bracket before hotkey or Hotstring

^!d::
{ ; V1toV2: Added bracket
Run("C:\Users\Nibir\Downloads")
Return
} ; V1toV2: Added Bracket before hotkey or Hotstring

^!i::
{ ; V1toV2: Added bracket
Run("D:\IUB")
Return
} ; V1toV2: Added Bracket before hotkey or Hotstring

^!j::
{ ; V1toV2: Added bracket
Run("D:\Work")
Return
} ; V1toV2: Added Bracket before hotkey or Hotstring

^!g::
{ ; V1toV2: Added bracket
Run("D:\06_Gallary")
Return
} ; V1toV2: Added Bracket before hotkey or Hotstring

^!s::
{ ; V1toV2: Added bracket
Run("D:\Software")
Return

;*******************************Close Active Window********************
} ; V1toV2: Added Bracket before hotkey or Hotstring


#q::
{ ; V1toV2: Added bracket
Title := WinGetTitle("A")
PostMessage(0x112, 0xF060, , , Title)
return

;***********************************************************************
} ; V1toV2: Added Bracket before hotkey or Hotstring

^+h::CheckActiveWindow()
  CheckActiveWindow()
{ ; V1toV2: Added bracket
    ID := WinExist("A")
    Class := WinGetClass("ahk_id " ID)
    WClasses := "CabinetWClass ExploreWClass"
    if InStr(WClasses, Class)
      Toggle_HiddenFiles_Display()
  Return
} ; V1toV2: Added Bracket before label
  
  Toggle_HiddenFiles_Display()
{ ; V1toV2: Added bracket
    RootKey := "HKEY_CURRENT_USER"
    SubKey := "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  
    HiddenFiles_Status := RegRead(RootKey "\" SubKey, "Hidden")
  
    if (HiddenFiles_Status = 2)
        RegWrite(1, "REG_DWORD", RootKey "\" SubKey, "Hidden")
    else 
        RegWrite(2, "REG_DWORD", RootKey "\" SubKey, "Hidden")
    PostMessage(0x111, 41504,,, "ahk_id " ID)
  Return
} ; V1toV2: Added bracket in the end

