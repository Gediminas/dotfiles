;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; MAC key bindings on Windows
;;; (Apple Magic Keyboard OR RDC)

; SharpKeys remaps:
;   LCtrl     --> LWin
;   LWin/RWin --> RCtrl (RCtrl does not exist on Apple "Magic" keyboard)
;
; AHK remaps:
;   <^  LCtrl - (physical CapsLock/Enter) - do not remap
;   >^  RCtrl - (physical LWin/RWin)      - remap here
;
; AHK remaps CapsLock / Enter --> LCtrl (exists)
; i.e.
; <^ = standard shortucts sent by LCtrl (LCtrl / CapsLock / Enter physical keys)
; >^ = system shortcuts sent by virtual RCtrl (LWin / RWin physical keys)


;; Windows navigation
>^Tab::AltTab
>^k::ShiftAltTab
>^j::AltTab

;; Minimize windows
; >^m::WinMinimize,a

; >!Tab::
; <!Tab::
;   return

; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; !g::SendInput,©
; !o::SendInput,ø
; !e::SendInput,€
; !+::SendInput,±
; !r::SendInput,®
; !w::SendInput,∑

