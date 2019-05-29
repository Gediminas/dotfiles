;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enter => Esc / LCtrl (hold)

;SetKeyDelay, -1

$*Enter::
  Send {Blind}{RCtrl Down}
  cDown := A_TickCount
  Return

$*Enter up::
  If ((A_TickCount-cDown)<200) {
    Send {Blind}{RCtrl Up}{Enter}
  }
  Else {
    Send {Blind}{RCtrl Up}
  }
  Return
