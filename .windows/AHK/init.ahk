;Create shortcut to this file under: C:\Users\<YOURUSERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

#SingleInstance force
#Persistent
#NoEnv         ; performance and compatibility with future AutoHotkey releases.
SendMode Input ; superior speed and reliability.
SetKeyDelay, -1, -1, -1


;; ; https://github.com/ahkscript/awesome-AutoHotkey
;; ; https://autohotkey.com/docs/KeyList.htm


#Include LockScreen.ahk

#Include keyboard\Workarounds.ahk
#Include keyboard\CLock.ahk
#Include keyboard\Space.ahk
#Include keyboard\RAlt.ahk
#Include keyboard\Tab.ahk
#Include keyboard\Comma.ahk
#Include keyboard\WinMng.ahk
#Include keyboard\app_MsDev.ahk

;; #Include keyboard\Lt.ahk
;; #Include keyboard\Punct.ahk
;; #Include keyboard\Hyper.ahk
 
LCtrl & Tab::AltTab

RButton & WheelUp::Send ^#{Left}
RButton & WheelDown::Send ^#{Right}
RButton::Send {RButton}


  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; # Win (Windows logo key)
;; ! Alt
;; ^ Control
;; + Shift
;; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
