; REMOVED: #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.


;*****************************Application********************************
;*************************WINDOWS KEY + SHIFT****************************


;Open Notepad
#+n::
{ ; 
Run("Notepad")
Return

;Open Goole Chrome
} ;
#+g::
{ ; 
Run(A_ProgramFiles "\Google\Chrome\Application\chrome.exe")
Return

;Open VS code
} ;
#+v::
{ ; 
Run("C:\Users\Nibir\AppData\Local\Programs\Microsoft VS Code\Code.exe")
Return

;Open MS Word
} ;
#+w:: ;
{ ; 
Run("C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE")
Return

;Open MS Excel
} ;
#+x::
;Run, %A_ProgramFiles%\Microsoft Office\root\Office16\EXCEL.EXE
;Return
{ ; 
ex :=ComObject("Excel.Application")
ex.visible := True
ex.Workbooks.Add
Return

;Open MS Access
} ;
#+a::
{ ; 
Run("C:\Program Files (x86)\Microsoft Office\root\Office16\MSACCESS.EXE")
Return

;Open PowerBI
} ;
#+b::
{ ; 
Run("C:\Program Files\Microsoft Power BI Desktop\bin\PBIDesktop.exe")
Return

;Open EveryThing
} ;
#+e::
{ ; 
Run("C:\Program Files\Everything\Everything.exe")
Return

;Open ShareX
} ;
#+s::
{ ; 
Run("C:\Program Files\ShareX\ShareX.exe")
Return

;***************************Windows Terminal***************************
;******************************Windows + T*****************************
;Open Windows Terminal
} ;
#+t::
{ ; 
Run("WT")
Return

;********************************Website********************************
;******************************CTRL + SHIFT*****************************


;Youtube
} ;
^+y::
{ ; 
Run("https://www.youtube.com/")
Return

;Facebook
} ;
^+f::
{ ; 
Run("https://www.facebook.com/")
Return


;********************************Website********************************
;***************************CTRL + SHIFT + ALT**************************

;Open Rammap
} ;
^+!r::
{ ; 
Run("D:\04_Backup\Software\Applications\00_live\RAMMap\RAMMap64.exe")
Return


;********************************Folder*********************************
;******************************CTRL + ALT*******************************
} ;


^!t::
{ ; 
Run("D:\Gallary\04_Tutorials")
Return
} ;

^!d::
{ ; 
Run("C:\Users\Nibir\Downloads")
Return
} ;

^!i::
{ ; 
Run("D:\IUB")
Return
} ;

^!j::
{ ; 
Run("D:\Work")
Return
} ;

^!g::
{ ; 
Run("D:\06_Gallary")
Return
} ;

^!s::
{ ; 
Run("D:\Software")
Return

;*******************************Close Active Window********************
} ;


#q::
{ ; 
Title := WinGetTitle("A")
PostMessage(0x112, 0xF060, , , Title)
return

}




