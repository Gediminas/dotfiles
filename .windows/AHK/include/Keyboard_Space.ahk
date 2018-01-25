; AHK script implementing hjkl navigation like TouchCursor 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; F1-F12 (for MacBookPro with TouchBar)

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
;;; Apple Magic Keyboard (Windows 10)

Space & F7:: SendInput {Media_Prev}
Space & F8:: SendInput {Media_Play_Pause}
Space & F9:: SendInput {Media_Next}
Space & F10::SendInput {Volume_Mute}
Space & F11::SendInput {Volume_Down}
Space & F12::SendInput {Volume_Up}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT

Space & Tab::SendInput, !{Tab}
Space & q::  SendInput, {Pause}
Space & w::  SendInput, ^{Tab}
;Space & e::Send, {Ctrl Down}n{Ctrl Up}
;Space & r::Send, {F5}

Space & a::SendInput ^+s
Space & s::SendInput {Blind}^s

Space & z::SendInput ^z
Space & x::SendInput ^x
Space & c::SendInput ^c
Space & v::SendInput ^v

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

;Space & q::
;	WinGetClass, ActiveClass, A
;	WinSet, Bottom,, A
;	WinActivate, ahk_class %ActiveClass%
;	return
;
;Space & q::
;	WinGetClass, ActiveClass, A
;	WinActivateBottom, ahk_class %ActiveClass%
;	return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; RIGHT

Space &  y::Send, {Home}
Space &  u::Send, {PgDn}
Space &  i::Send, {PgUp}
Space &  o::Send, {End}
Space &  p::Send, ^+{Left}{Delete}

Space &  h::Send, {Blind}{Left}
Space &  j::Send, {Blind}{Down}
Space &  k::Send, {Blind}{Up}
Space &  l::Send, {Blind}{Right}
Space & `;::Send, {Blind}{Backspace}

Space &  b::Send, {Blind}{Space}
Space &  n::Send, {Blind}{Enter}
Space &  m::Send, {Blind}{Delete}
Space & Backspace::Send, {Blind}{Delete}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DESKTOP

Space & Left:: SendInput ^#{Left}
Space & Right::SendInput ^#{Right}

Space & ,::SendInput ^#{Left}
Space & .::SendInput ^#{Right}



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; MEDIA

Space & Up::  Send, {Volume_Mute}
Space & Down::Send, {Media_Play_Pause}

;Space & F7:: SendInput {Media_Prev}
;Space & F8:: SendInput {Media_Play_Pause}
;Space & F9:: SendInput {Media_Next}
;Space & F10::SendInput {Volume_Mute}
;Space & F11::SendInput {Volume_Down}
;Space & F12::SendInput {Volume_Up}

;Space & BS::return
;Space & [::return
;Space & ]::return
;Space & ''::return
;Space & \::return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Space & RShift::Send, {LWin Down}{Tab}{LWin Up}
;Space & Enter::Send, {LWin Down}{Tab}{LWin Up}
;Space & /::return

$*Space::send {Blind}{Space} 

