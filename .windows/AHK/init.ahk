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

#Include include\dual\dual.ahk
dual := new Dual({delay: 70, timeout: 300, doublePress: 200, specificDelays: false})
#Include include\dual\defaults.ahk

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#If true ;Override, "duplicate hotkey" errors
	*LCtrl::LWin
	*LWin::RCtrl
#If

#If (not GetKeyState("space", "P"))
	*v::
	*v UP::dual.combine("F23", A_ThisHotkey)
	*n::
	*n UP::dual.combine("F24", A_ThisHotkey)

	*1:: dual.comboKey({F23: "w"})
	*f:: dual.comboKey({F23: "g"})
	
	*2::
	*3::
	*4:: 
	*5::
	*6::
	*q::
	*w::
	*e::
	*r::
	*t::
	*y::
	*a::
	*s::
	*d::
	*g::
	*`::
	*z::
	*x::
	*c::
	    dual.comboKey({F23: !A_ThisHotkey})
	    return
#If

;;======================
;; NV-mode (n/v + same_side => Alt+Ctrl)

#If (GetKeyState("v", "P"))
    +tab:: SendInput, {Blind}+!^{F13}
#If

#If (GetKeyState("n", "P"))
	+7::
	+8::
	+9::
	+0::
	+-::
	+=::
	+y::
	+u::
	+i::
	+o::
	+p::
	+[::
	+]::
	+h::
	+j::
	+k::
	+l::
	+`;::
	+'::
	+\::
	+m::
	+,::
	+.::
	+/::
		;dual.comboKey()
		Send, +^%A_ThisHotkey%
		return
#If

;;;;======================
;;;; SPC-mode (essential)
;;
;;*Space::
;;*Space UP::dual.combine("F24", A_ThisHotkey)
;;
;;*h::dual.comboKey({F24: "Left"})
;;*j::dual.comboKey({F24: "Down"})
;;*k::dual.comboKey({F24: "Up"})
;;*l::dual.comboKey({F24: "Right"})
;;*n::dual.comboKey({F24: "Enter"})
;;*m::dual.comboKey({F24: "Esc"})

;;======================
;; NV-mode (n/v + opp_side => Shift + opp_side)

F6 & F7::dual.reset()

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;#Include LockScreen.ahk
;#Include include\mode-B.ahk
;;#Include include\mode-FJ.ahk
;;#Include include\mode-VN.ahk
;;#Include include\mode-V.ahk
#Include include\mode-Space.ahk
;#Include include\mode-Space-LT.ahk
;#Include include\mode-Space-Magic.ahk
;#Include include\mode-Win.ahk
;#Include include\mode-CapsLock.ahk
;#Include include\mode-Enter.ahk
;#Include include\Workarounds.ahk

F5 & F6:: 
  SendInput, +^s
  Reload
  Return
  
;$*F5::Send {Blind}{F5}

;;;;;;;;;;;;;
;rdc disable
;WheelUp::WheelDown
;WheelDown::WheelUp
;;;;;;;;;;;;;;

;; space & d:: SendInput ^#{Left}
;; space & f::SendInput ^#{Right}

;;d & f:: SendInput ^#{Left}
;;d & v::SendInput ^#{Right}
;;$*d::SendInput {Blind}{d} 



