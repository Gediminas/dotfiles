; AHK script implementing hjkl navigation like TouchCursor 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT
Space & Tab::SendInput, ^{Tab}
     
Space & s::
  If WinActive("ahk_exe emacs.exe") {
    SendInput, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe emacsclient.exe") {
  	SendInput, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
    SendInput, {Esc}:w{Enter}
  } Else {
    SendInput {Blind}^s
  }
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DESKTOP

Space & Left:: SendInput ^#{Left}
Space & Right::SendInput ^#{Right}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; n/m => Enter/Escape

Space & n::SendInput, {Enter}
Space & m::SendInput, {Blind}{Esc}
Space & `;::SendInput, {Blind}{Backspace}
Space & BS::SendInput, {Blind}{Delete}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; d/y/p => VIM cut/copy/paste

Space & x::SendInput ^x
Space & y::SendInput ^c
Space & p::SendInput ^v


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; h/j/k/l => VIM navigation 
;; c/v     => + Ctrl/Shift

Space & v::
Space & c::
  Return

#If (not GetKeyState("c", "P")) and (GetKeyState("v", "P"))
  Space & h::SendInput, {Blind}+{Left}
  Space & j::SendInput, {Blind}+{Down}
  Space & k::SendInput, {Blind}+{Up}
  Space & l::SendInput, {Blind}+{Right}
  Space & d::SendInput, {Blind}+{Up}
  Space & f::SendInput, {Blind}+{Down}

#If (GetKeyState("c", "P")) and (not GetKeyState("v", "P"))
  Space & h::SendInput, {Blind}^{Left}
  Space & j::SendInput, {Blind}^{Down}
  Space & k::SendInput, {Blind}^{Up}
  Space & l::SendInput, {Blind}^{Right}

#If (GetKeyState("c", "P")) and (GetKeyState("v", "P"))
  Space & h::SendInput, {Blind}^+{Left}
  Space & j::SendInput, {Blind}^+{Down}
  Space & k::SendInput, {Blind}^+{Up}
  Space & l::SendInput, {Blind}^+{Right}

#If
  Space & h::SendInput, {Blind}{Left}
  Space & j::SendInput, {Blind}{Down}
  Space & k::SendInput, {Blind}{Up}
  Space & l::SendInput, {Blind}{Right}
  Space & f::SendInput, {Blind}{Up}
  Space & d::SendInput, {Blind}{Down}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

