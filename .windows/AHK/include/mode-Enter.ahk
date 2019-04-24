
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
