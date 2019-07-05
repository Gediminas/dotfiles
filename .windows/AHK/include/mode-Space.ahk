; AHK script implementing hjkl navigation like TouchCursor 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT

Space & Tab::AltTab
Space & w::Send ^{Tab}
     
Space & s::
  If WinActive("ahk_exe emacs.exe") {
    Send, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe emacsclient.exe") {
  	Send, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
    Send, {Esc}:w{Enter}
  } Else {
    Send {Blind}^s
  }
  Return

Space & d::Send ^#{Left}
Space & f::Send ^#{Right}
;Space & Left:: Send ^#{Left}
;Space & Right::Send ^#{Right}

Space & a::Send ^a
Space & x::Send ^x
Space & c::Send ^c
Space & v::Send ^v
Space & z::Send ^z

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; RIGHT

Space & h::Send {Blind}{Left}
Space & j::Send {Blind}{Down}
Space & k::Send {Blind}{Up}
Space & l::Send {Blind}{Right}

Space & n::Send, {Enter}
Space & m::Send, {Blind}{Esc}
Space & `;::Send, {Blind}{Backspace}
Space & BS::Send, {Blind}{Delete}
