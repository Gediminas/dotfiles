; Create shortcut to this file under: C:\Users\<YOURUSERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

; SetKeyDelay, -1
; SetControlDelay, -1
; SetWinDelay, -1
; SetMouseDelay, -1
; SetBatchLines, -1
; Process, Priority,, High
; ListLines Off
; #KeyHistory 0
; #NoEnv

; # Win (Windows logo key)
; ! Alt
; ^ Control
; + Shift
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

; https://github.com/ahkscript/awesome-AutoHotkey
; https://autohotkey.com/docs/KeyList.htm


#Include include\Keyboard.ahk
#Include include\Keyboard_Dual.ahk
#Include include\Keyboard_Space.ahk
#Include include\Keyboard_Space-Magic.ahk
#Include include\Keyboard_Space-LT.ahk
; #Include include\Keyboard_Space-FN.ahk
#Include include\Keyboard_V.ahk
; #Include include\Keyboard_N.ahk
#Include include\Keyboard_Win.ahk

#Include include\mouser6.ahk
#Include include\CapsLockTapEscapeHoldControl.ahk

;#Include include\AdvancedWindowSnap.ahk
;#Include include\AlwaysOnTop.ahk
;#Include include\Media.ahk
;#Include include\Screenshots.ahk
;#Include include\Spotlight.ahk
;#Include include\TabModifier.ahk

#Include include\Keyboard_Workarounds.ahk
