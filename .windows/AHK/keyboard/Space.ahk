; AHK script implementing hjkl navigation like TouchCursor 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Emulate Apple F1-F12 on Windows 10

;BS := new BrightnessSetter()
;Space & F1:: BS.SetBrightness(10)
;Space & F2:: BS.SetBrightness(-10)

Space & F3:: SendInput, #{Tab}
Space & F4:: SendInput, {LWin}

Space & F7:: SendInput {Media_Prev}
Space & F8:: SendInput {Media_Play_Pause}
Space & F9:: SendInput {Media_Next}
Space & F10::SendInput {Volume_Mute}
Space & F11::SendInput {Volume_Down}
Space & F12::SendInput {Volume_Up}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; spc + [1..9,0,-,=] => F1-F12
;;; (compatibility for MacBookPro with TouchBar on RDC)

Space & 1::Send, {Blind}{F1}
Space & 2::Send, {Blind}{F2}
Space & 3::Send, {Blind}{F3}
Space & 4::Send, {Blind}{F4}
Space & 5::Send, {Blind}{F5}
Space & 6::Send, {Blind}{F6}
Space & 7::Send, {Blind}{F7}
Space & 8::Send, {Blind}{F8}
Space & 9::Send, {Blind}{F9}
Space & 0::Send, {Blind}{F10}
Space & -::Send, {Blind}{F11}
Space & =::Send, {Blind}{F12}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT

Space & Tab::AltTab
Space & w::Send {LCtrl down}{Tab}{LCtrl up}
     
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

Space & u::Send {Home}
Space & i::Send {End}

Space & n::
  Send {Blind}{Esc}
  Return

Space & b::
  Send {Enter}
  Return

Space & y::
  Send {Space}
  Return

Space & m::Send, {Blind}{Backspace}
;;Space & BS::Send, {Blind}{Delete}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;; ELSE

$Space::Send {Blind}{space} 
