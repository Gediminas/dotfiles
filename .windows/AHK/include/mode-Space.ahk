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

Space & `;::SendInput, {Blind}{Backspace}
Space & BS::SendInput, {Blind}{Delete}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Space & y::    Send ^c
Space & p::    Send ^v
Space & b::    Send {Enter}
Space & RCtrl::Send {Blind}{Esc}


Space & v::   Send {LShift down}
Space & v up::Send {LShift up}
Space & n::   Send {RShift down}
Space & n up::Send {RShift up}

Space & c::   Send {LCtrl down}
Space & c up::Send {LCtrl up}
Space & m::   Send {RCtrl down}
Space & m up::Send {RCtrl up}

Space & x::   Send {LAlt down}
Space & x up::Send {LAlt up}
Space & ,::   Send {RAlt down}
Space & , up::Send {RAlt up}


Space & h::SendInput, {Blind}{Left}
Space & j::SendInput, {Blind}{Down}
Space & k::SendInput, {Blind}{Up}
Space & l::SendInput, {Blind}{Right}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
