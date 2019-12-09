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
Space & SC029::Send, {Blind}{F13} ;` mx apple magic
Space & SC056::Send, {Blind}{F13} ;\ nm apple magic


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LEFT

Space & Tab::AltTab
Space & w::Send {LCtrl down}{Tab}{LCtrl up}
     
Space & a::
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

Space & SC020::Send ^#{Left}  ;d
Space & SC021::Send ^#{Right} ;f
;Space & Left:: Send ^#{Left}
;Space & Right::Send ^#{Right}

Space & x::Send ^x
Space & c::Send ^c
Space & v::Send ^v
Space & z::Send ^z

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; RIGHT

;#If (GetKeyState("Ctrl","P") && GetKeyState("Shift","P"))
;  Space & j::Send +{PgDn}
;  Space & k::Send +{PgUp}
;#If (GetKeyState("LCtrl","P"))
;  Space & j::Send {PgDn}
;  Space & k::Send {PgUp}
;#If

Space & SC024::Send {Blind}{Left} ;j
Space & SC017::Send {Blind}{Up}   ;i
Space & SC025::Send {Blind}{Down} ;k
Space & SC026::Send {Blind}{Right};l
Space & SC016::Send {Blind}{Home} ;u
Space & SC018::Send {Blind}{End}  ;o

Space & SC031::
;  Send {Blind}{Esc}
  Return


Space & b::
  Send {Enter}
  Return

Space & m::Send, {Blind}{Backspace}

Space & BS::Send, {Blind}{Delete}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;;; ELSE

$Space::Send {Blind}{space} 
