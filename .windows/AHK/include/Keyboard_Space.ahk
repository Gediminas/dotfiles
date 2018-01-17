; AHK script implementing hjkl navigation like TouchCursor 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; FUNCTIONS

Space & 1::Send, {F1}
Space & 2::Send, {F2}
Space & 3::Send, {F3}
Space & 4::Send, {F4}
Space & 5::Send, {F5}
Space & 6::Send, {F6}
Space & 7::Send, {F7}
Space & 8::Send, {F8}
Space & 9::Send, {F9}
Space & 0::Send, {F10}
Space & -::Send, {F11}
Space & =::Send, {F12}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; RIGHT

Space & CapsLock::
Space & Esc::
  If WinActive("ahk_exe Code.exe") {
    Send ^{F4}
  } Else If WinActive("ahk_class Notepad") {
    Send !{F4}
  } Else {
    Send ^w
  }
Return
								
Space & Tab::Send, !{Tab}
Space & q::Send, ^{Tab}
Space & w::Send, ^{Tab}

Space & s::Send, {Blind}^s



;;Space & e::Send, {Ctrl Down}n{Ctrl Up}
;;Space & r::Send, {F5}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT

Space & y::Send, {Home}
Space & u::Send, {PgDn}
Space & i::Send, {PgUp}
Space & o::Send, {End}
Space & p::Send, {Backspace}
Space & [::Send, {Ctrl Down}{Left}{Ctrl Up}{Delete}

Space & h::Send, {Blind}{Left}
Space & j::Send, {Blind}{Down}
Space & k::Send, {Blind}{Up}
Space & l::Send, {Blind}{Right}

Space & b::Send, {Blind}^{Space}
;Space & n::Send, {Blind}^{Enter}

Space & Backspace::Send, {Blind}^{Delete}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DESKTOP

Space & Left::Send, {Ctrl Down}{LWin Down}{Left} {Ctrl Up}{LWin Up}
Space & Right::Send, {Ctrl Down}{LWin Down}{Right}{Ctrl Up}{LWin Up}

;Space & e::Send, {Ctrl Down}{LWin Down}{Left} {Ctrl Up}{LWin Up}
;Space & r::Send, {Ctrl Down}{LWin Down}{Right}{Ctrl Up}{LWin Up}

Space & ,::Send, {Ctrl Down}{LWin Down}{Left} {Ctrl Up}{LWin Up}
Space & .::Send, {Ctrl Down}{LWin Down}{Right}{Ctrl Up}{LWin Up}

;Space & RShift::Send, {LWin Down}{Tab}{LWin Up}
;Space & Enter::Send, {LWin Down}{Tab}{LWin Up}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; MEDIA

Space & Up::  Send, {Volume_Mute}
Space & Down::Send, {Media_Play_Pause}

;Space & Esc::Send, {Media_Prev}
;Space & `::Send, {Media_Prev}
;Space & BS::Send, {Media_Next}
;Space & y::Send, {Volume_Mute}
;Space & [::Send, {Volume_Down}
;Space & ]::Send, {Volume_Up}
;Space & \::Send, {Media_Play_Pause}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; Too distracting
;Space & LShift::Send, {Alt Down}{Space}{Alt Up}
; <+Space::Send, {Alt Down}{Space}{Alt Up}

;Space::Send, {Space}
;Return

$*Space::send {Blind}{Space} 

