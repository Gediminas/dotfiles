;Create shortcut to this file under: C:\Users\<YOURUSERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

#SingleInstance force
#Persistent

; https://gist.github.com/jitbit/e948cf198f54cbf3992c 
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetKeyDelay, -1, -1, -1

; # Win (Windows logo key)
; ! Alt
; ^ Control
; + Shift
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

; https://github.com/ahkscript/awesome-AutoHotkey
; https://autohotkey.com/docs/KeyList.htm


;#Include LockScreen.ahk
;#Include include\mode-B.ahk
;;#Include include\mode-FJ.ahk
#Include include\mode-VN.ahk
#Include include\mode-V.ahk
#Include include\mode-Space.ahk
;#Include include\mode-Space-LT.ahk
;#Include include\mode-Space-Magic.ahk
;#Include include\mode-Win.ahk
;#Include include\mode-CapsLock.ahk
;#Include include\mode-Enter.ahk
;#Include include\Workarounds.ahk

tab & q:: 
  dual.reset()
  SendInput, +^s
  Reload
  Return
  
;; space & d:: SendInput ^#{Left}
;; space & f::SendInput ^#{Right}

;;d & f:: SendInput ^#{Left}
;;d & v::SendInput ^#{Right}
;;$*d::SendInput {Blind}{d} 

; ResophNotes
!Space::#!F11

$*n::Send {Blind}{n} 
$*v::Send {Blind}{v} 
$*space::Send {Blind}{space} 
$*tab::Send {Blind}{tab} 

