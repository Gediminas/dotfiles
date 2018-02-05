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
Space & q::  SendInput, {Blind}{Pause}

Space & w::
  If WinActive("ahk_exe emacs.exe") {
	SendInput, {Space}{Tab}
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
	SendInput, {Space}{Tab}
  } Else {
    SendInput, ^{Tab}
  }
Return

;Space & e::SendInput, {Ctrl Down}n{Ctrl Up}
Space & r::SendInput, ^{F5}

Space & a::SendInput ^+s

Space & s::
  If WinActive("ahk_exe emacs.exe") {
  	SendInput, {Esc}
    Sleep 200
    SendInput, {Space}
    Sleep 200
    SendInput, {f}{s}
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
    SendInput, {Esc}
    Sleep 200
    SendInput, {Space}
    Sleep 200
    SendInput, {f}{s}
  } Else {
    SendInput {Blind}^s
  }
Return

Space & z::SendInput ^z
Space & x::SendInput ^x
Space & c::SendInput ^c

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

Space &  y::SendInput, {Blind}{Home}
Space &  u::SendInput, {Blind}{PgDn}
Space &  i::SendInput, {Blind}{PgUp}
Space &  o::SendInput, {Blind}{End}
Space &  p::SendInput, ^+{Left}{Delete}

Space &  h::SendInput, {Blind}{Left}
Space &  j::SendInput, {Blind}{Down}
Space &  k::SendInput, {Blind}{Up}
Space &  l::SendInput, {Blind}{Right}
Space & `;::SendInput, {Blind}{Backspace}

Space &  m::SendInput, {Blind}{Delete}
Space & BS::SendInput, {Blind}{Delete}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DESKTOP

Space & Left:: SendInput ^#{Left}
Space & Right::SendInput ^#{Right}

;Space & ,::SendInput ^#{Left}
;Space & .::SendInput ^#{Right}


Space & ,::Send, {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}
Space & .::Send, {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up}

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


;Space & n::SendInput, {Blind}{Enter}
Space & b::SendInput, {Blind}{Space}
Space & v::SendInput ^v

$*Space::send {Blind}{Space} 
