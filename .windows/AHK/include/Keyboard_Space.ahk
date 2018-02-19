; AHK script implementing hjkl navigation like TouchCursor 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT

Space & Tab::SendInput, !{Tab}

Space & q::
  WinGetClass, ActiveClass, A
  WinActivateBottom, ahk_class %ActiveClass%
  return

Space & w::
  If WinActive("ahk_exe emacs.exe") {
  	SendInput, {Space}{Tab}
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
  	SendInput, {Space}{Tab}
  } Else {
    SendInput, ^{Tab}
  }
  Return

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
    Sleep 100
    SendInput, {Space}
    ;Sleep 100
    SendInput, {f}{s}
  } Else {
    SendInput {Blind}^s
  }
Return

Space & d::
  SendInput {Shift Down}
  Return
Space & d up::
  SendInput {Shift Up}
  Return
Space & f::
  SendInput {Shift Down}
  Return
Space & f up::
  SendInput {Shift Up}
  Return

Space & z::SendInput ^z
Space & x::SendInput ^x
Space & c::SendInput ^c


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


Space & b::SendInput, {Blind}{Space}
Space & n::SendInput, {Blind}{Enter}
Space & v::SendInput, ^v

$*Space::SendInput {Blind}{Space} 
