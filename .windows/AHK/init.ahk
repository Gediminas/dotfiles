;Create shortcut to this file under: C:\Users\<YOURUSERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

#SingleInstance force
#Persistent
#NoEnv         ; performance and compatibility with future AutoHotkey releases.
SendMode Input ; superior speed and reliability.
SetKeyDelay, -1, -1, -1


;; ; https://github.com/ahkscript/awesome-AutoHotkey
;; ; https://autohotkey.com/docs/KeyList.htm


#Include LockScreen.ahk

#Include keyboard\spc.ahk
#Include keyboard\capslock.ahk
#Include keyboard\enter.ahk
#Include keyboard\v.ahk
#Include keyboard\Lt.ahk
#Include keyboard\Punct.ahk
#Include keyboard\WinMng.ahk
 
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
