;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; MAC key bindings on Windows
;;; (Apple Magic Keyboard OR RDC)

; SharpKeys remaps LWin/RWin --> RCtrl (non existing on magic keyboard)
; AHK remaps CapsLock / Enter --> LCtrl (exists)
; i.e.
; <^ = standard shortucts sent by LCtrl (LCtrl / CapsLock / Enter physical keys)
; >^ = system shortcuts sent by virtual RCtrl (LWin / RWin physical keys)


;; Windows navigation
>^Tab::AltTab
>^j::ShiftAltTab
>^k::AltTab

;; Minimize windows
>^m::WinMinimize,a

;; Close windows
>^q::Send !{F4}

>!Tab::
<!Tab::
  return

; #If GetKeyState("Shift", "")
; #If

; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; !g::SendInput,©
; !o::SendInput,ø
; !e::SendInput,€
; !+::SendInput,±
; !r::SendInput,®
; !w::SendInput,∑

