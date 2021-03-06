#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;*****************************Application********************************
;*************************WINDOWS KEY + SHIFT****************************


;Open Notepad
#+n::
Run Notepad
Return

;Open Goole Chrome
#+g::
Run %A_ProgramFiles%\Google\Chrome\Application\chrome.exe
Return

;Open VS code
#+c::
Run "C:\Users\Nibir\AppData\Local\Programs\Microsoft VS Code\Code.exe"
Return

;Open MS Word
#+w:: ; Press "Windows key" + "Shift" + w
Run, %A_ProgramFiles%\Microsoft Office\root\Office16\WINWORD.EXE
Return

;Open MS Excel
#+x::
;Run, %A_ProgramFiles%\Microsoft Office\root\Office16\EXCEL.EXE
;Return
ex :=ComObjCreate("Excel.Application")
ex.visible := True
ex.Workbooks.Add
Return

;Open MS Access
#+a::
Run, %A_ProgramFiles%\Microsoft Office\root\Office16\MSACCESS.EXE
Return

;Open EveryThing
#+e::
Run, "C:\Program Files\Everything\Everything.exe"
Return

;Open ShareX
#+s::
Run, "C:\Program Files\ShareX\ShareX.exe"
Return

;Open Microsoft powerBI
#+b::
Run, "C:\Program Files\Microsoft Power BI Desktop\bin\PBIDesktop.exe"
Return

;Open Windows Terminal
#+t::
Run, WT
Return

;Open Avro Keyboard
#+l::
Run, "C:\Program Files (x86)\Avro Keyboard\Avro Keyboard.exe"
Return

;********************************Website********************************
;******************************CTRL + SHIFT*****************************


;Youtube
^+y::
Run, https://www.youtube.com/
Return

;Facebook
^+f::
Run, https://www.facebook.com/
Return


;********************************Folder*********************************
;******************************CTRL + ALT*******************************


^!t::
Run, D:\Tutorials\
Return

^!d::
Run, C:\Users\Nibir\Downloads
Return

^!i::
Run, D:\IUB
Return

;*******************************Close Active Window********************


#q::
WinGettitle, Title, A
PostMessage, 0x112, 0xF060,,, %Title%
return

;***********************************************************************

^+h::GoSub,CheckActiveWindow
  CheckActiveWindow:
    ID := WinExist("A")
    WinGetClass,Class, ahk_id %ID%
    WClasses := "CabinetWClass ExploreWClass"
    IfInString, WClasses, %Class%
      GoSub, Toggle_HiddenFiles_Display
  Return
  
  Toggle_HiddenFiles_Display:
    RootKey = HKEY_CURRENT_USER
    SubKey  = Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
  
    RegRead, HiddenFiles_Status, % RootKey, % SubKey, Hidden
  
    if HiddenFiles_Status = 2
        RegWrite, REG_DWORD, % RootKey, % SubKey, Hidden, 1 
    else 
        RegWrite, REG_DWORD, % RootKey, % SubKey, Hidden, 2
    PostMessage, 0x111, 41504,,, ahk_id %ID%
  Return