; Create shortcut to this file under: C:\Users\<YOURUSERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

; # Win (Windows logo key)
; ! Alt
; ^ Control
; + Shift
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

; https://github.com/ahkscript/awesome-AutoHotkey
; https://autohotkey.com/docs/KeyList.htm

SetKeyDelay, 0

#Include include\Keyboard.ahk
#Include include\Keyboard_Dual.ahk
#Include include\Keyboard_Space.ahk
#Include include\Keyboard_V.ahk
#Include include\Keyboard_Win.ahk

#Include include\mouser6.ahk
#Include include\CapsLockTapEscapeHoldControl.ahk

;#Include include\AdvancedWindowSnap.ahk
;#Include include\AlwaysOnTop.ahk
;#Include include\Media.ahk
;#Include include\Screenshots.ahk
;#Include include\Spotlight.ahk
;#Include include\TabModifier.ahk

; ------------------------------------------------------------------------------
; Custom "Mission Control"
;#<::
;  Send,^#{left}
;Return
;
;#>::
;  Send,^#{right}
;Return
;
;#/::
;  Send,#{tab}
;Return
;
; ------------------------------------------------------------------------------
