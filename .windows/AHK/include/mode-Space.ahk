; AHK script implementing hjkl navigation like TouchCursor 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT

;; Space & Tab::SendInput, !{Tab}
;; 
;; Space & q::
;;  WinGetClass, ActiveClass, A
;;  WinActivateBottom, ahk_class %ActiveClass%
;;  return

;;Space & w::
;;  If WinActive("ahk_exe emacs.exe") {
;;  	SendInput, {Space}{Tab}
;;  } Else If WinActive("ahk_exe putty_tray_64.exe") {
;;  	SendInput, {Space}{Tab}
;;  } Else {
;;    SendInput, ^{Tab}
;;  }
;;  Return
;;
;;Space & r::SendInput, ^{F5}
;;
;;Space & a::
;;  If WinActive("ahk_exe emacs.exe") {
;;    SendInput, {Esc}:wa{Enter}
;;  } Else If WinActive("ahk_exe putty_tray_64.exe") {
;;    SendInput, {Esc}:wa{Enter}
;;  } Else {
;;    SendInput {Blind}^+s
;;  }
;;Return

Space & s::
  If WinActive("ahk_exe emacs.exe") {
  	SendInput, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
    SendInput, {Esc}:w{Enter}
  } Else {
    SendInput {Blind}^s
  }
Return


;;Space & d::
;;  SendInput {Ctrl Down}
;;  Return
;;Space & d up::
;;  SendInput {Ctrl Up}
;;  Return
;;Space & e::
;;  SendInput {Shift Down}
;;  Return
;;Space & e up::
;;  SendInput {Shift Up}
;;  Return

;; Space & z::SendInput ^z
;; Space & x::SendInput ^x
;; Space & c::SendInput ^c


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; RIGHT

;Space &  y::SendInput, {Blind}{Tab}
;Space &  u::SendInput, {Blind}{PgDn}
;Space &  i::SendInput, {Blind}{PgUp}
;Space &  o::SendInput, {Blind}{Home}
;Space &  p::SendInput, {Blind}{End}

;; Space & `;::SendInput, {Blind}{Backspace}
;; ;Space &  '::SendInput, ^{Backspace}

;Space &  m::SendInput, {Blind}{Delete}
Space & BS::SendInput, {Blind}{Delete}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DESKTOP

Space & Left:: SendInput ^#{Left}
Space & Right::SendInput ^#{Right}

;; Space & .::SendInput ^#{Left}
;; Space & /::SendInput ^#{Right}

;; Space & ,::SendInput ^#{Left}
;; Space & .::SendInput ^#{Right}

;; Space & m::SendInput, {Blind}{PgDn}
;; Space & ,::SendInput, {Blind}{PgUp}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Space & b::SendInput, {Blind}{Space}
;; Space & v::SendInput, ^v


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; n => Enter

Space & n::SendInput, {Blind}{Enter}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; d/y/p => VIM cut/copy/paste

Space & d::SendInput ^x
Space & y::SendInput ^c
Space & p::SendInput ^v


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; h/j/k/l => VIM navigation 
;; c/v     => + Ctrl/Shift

Space & v::
Space & c::
Space & x::
  Return

#If (not GetKeyState("c", "P")) and (GetKeyState("v", "P"))
  Space & h::SendInput, {Blind}+{Left}
  Space & j::SendInput, {Blind}+{Down}
  Space & k::SendInput, {Blind}+{Up}
  Space & l::SendInput, {Blind}+{Right}

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
  Space &  h::SendInput, {Blind}{Left}
  Space &  j::SendInput, {Blind}{Down}
  Space &  k::SendInput, {Blind}{Up}
  Space &  l::SendInput, {Blind}{Right}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$*Space:: SendInput {Blind}{Space}
