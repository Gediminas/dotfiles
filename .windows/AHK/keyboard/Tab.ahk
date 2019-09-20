; Tab Layer


Tab & 7::Send {&}
Tab & 8::Send {*}
Tab & 9::Send {(}
Tab & 0::Send {)}

Tab & y::Send {7}
Tab & u::Send {8}
Tab & i::Send {9}
Tab & o::Send {+}
Tab & p::Send {-}

Tab & h::Send {4}
Tab & j::Send {5}
Tab & k::Send {6}
Tab & l::Send {0}
Tab & `;::Send {Backspace}
Tab & \::Send {|}

Tab & b::Send {Enter}
Tab & n::Send {1}
Tab & m::Send {2}
Tab & ,::Send {3}


Tab & q:: 
  If WinActive("ahk_exe emacs.exe") {
    SendInput, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe emacsclient.exe") {
    SendInput, {Esc}:w{Enter}
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
    SendInput, {Esc}:w{Enter}
  } Else {
    SendInput {Blind}^s
  }
  Reload
  Return

$*Tab::Send {Blind}{Tab}

