;Create shortcut to this file under: C:\Users\<YOURUSERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

#SingleInstance force
#Persistent
#NoEnv         ; performance and compatibility with future AutoHotkey releases.
SendMode Input ; superior speed and reliability.
SetKeyDelay, -1, -1, -1


;; ; https://github.com/ahkscript/awesome-AutoHotkey
;; ; https://autohotkey.com/docs/KeyList.htm


#Include LockScreen.ahk
;; ;  ;#Include include\mode-Win.ahk

;; ;  ;#Include include\mode-B.ahk
;; ;  ;;#Include include\mode-FJ.ahk

;; ;  ;#Include include\mode-V-dual.ahk
;; ;  ;#Include include\mode-VN.ahk
;; #Include include\mode-V.ahk

#Include include\mode-Space.ahk
#Include include\mode-Space-Magic.ahk
#Include include\mode-Space-FN.ahk

#Include include\mode-Space-LT.ahk
#Include include\mode-CapsLock.ahk
;; #Include include\mode-Enter.ahk

#Include include\Workarounds.ahk
  
 
tab & q:: 
  If WinActive("ahk_exe emacs.exe") {
    SendInput, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe emacsclient.exe") {
    SendInput, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
    SendInput, {Esc}:w{Enter}
  } Else {
    SendInput {Blind}^s
  }
  Reload
  Return
  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; # Win (Windows logo key)
;; ! Alt
;; ^ Control
;; + Shift
;; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
