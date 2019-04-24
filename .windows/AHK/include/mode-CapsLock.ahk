  ; https://superuser.com/questions/581692/remap-caps-lock-in-windows-escape-and-control

$*CapsLock::
  Send {Blind}{LCtrl Down}
  cDown := A_TickCount
  Return

$*CapsLock up::
  If ((A_TickCount-cDown)<200) {
     Send {Blind}{LCtrl Up}{Esc}
   }
  Else {
    Send {Blind}{LCtrl Up}
  }
  Return


$*Enter::
  Send {Blind}{LCtrl Down}
  cDown := A_TickCount
  Return

$*Enter up::
  If ((A_TickCount-cDown)<200) {
    If WinActive("ahk_exe ClearLock.exe") {
      Send {Blind}{LCtrl Up}
    }
    else {
      Send {Blind}{LCtrl Up}{Enter}
    }
  }
  Else {
    Send {Blind}{LCtrl Up}
  }
  Return
