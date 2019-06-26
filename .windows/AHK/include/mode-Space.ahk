; AHK script implementing hjkl navigation like TouchCursor 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT
Space & Tab::Send, ^{Tab}
     
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DESKTOP

Space & Left:: Send ^#{Left}
Space & Right::Send ^#{Right}
Space & d::Send ^#{Left}
Space & f::Send ^#{Right}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; n/m => Enter/Escape

Space & n::Send, {Enter}
Space & m::Send, {Blind}{Esc}
Space & `;::Send, {Blind}{Backspace}
Space & BS::Send, {Blind}{Delete}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; d/y/p => VIM cut/copy/paste

Space & x::Send ^x
Space & y::Send ^c
Space & p::Send ^v


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; h/j/k/l => VIM navigation 
;; c/v     => + Ctrl/Shift

Space & v::
Space & c::
  Return

#If (not GetKeyState("c", "P")) and (GetKeyState("v", "P"))
  Space & h::Send {Blind}+{Left}
  Space & j::Send {Blind}+{Down}
  Space & k::Send {Blind}+{Up}
  Space & l::Send {Blind}+{Right}

#If (GetKeyState("c", "P")) and (not GetKeyState("v", "P"))
  Space & h::Send {Blind}^{Left}
  Space & j::Send {Blind}^{Down}
  Space & k::Send {Blind}^{Up}
  Space & l::Send {Blind}^{Right}

#If (GetKeyState("c", "P")) and (GetKeyState("v", "P"))
  Space & h::Send {Blind}^+{Left}
  Space & j::Send {Blind}^+{Down}
  Space & k::Send {Blind}^+{Up}
  Space & l::Send {Blind}^+{Right}

#If
  Space & h::Send {Blind}{Left}
  Space & j::Send {Blind}{Down}
  Space & k::Send {Blind}{Up}
  Space & l::Send {Blind}{Right}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ;SpaceFn
; #inputlevel,2
; $Space::
; SetMouseDelay -1
; Send {Blind}{F24 DownR}
; KeyWait, Space
; Send {Blind}{F24 up}
; ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
; if(A_ThisHotkey="$Space" and A_TimeSinceThisHotkey<300)
;   Send {Blind}{Space DownR}
; return

; #inputlevel,1
; F24 & i::Up
; F24 & k::Down
; F24 & j::Left
; F24 & l::Right
; F24 & u::Home
; F24 & o::End
; F24 & n::PgUp
; F24 & m::PgDn

; F24 & 1::F1
; F24 & 2::F2
; F24 & 3::F3
; F24 & 4::F4
; F24 & 5::F5
; F24 & 6::F6
; F24 & 7::F7
; F24 & 8::F8
; F24 & 9::F9
; F24 & 0::F10
; F24 & -::F11
; F24 & =::F12

; F24 & Enter::^Enter