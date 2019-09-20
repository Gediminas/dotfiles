 ; WinGetPos,,, Width, Height, A

Tab & Enter::Send +!{Tab}

Tab & j::
  WinRestore, A
  WinMove, A,, 0, A_ScreenHeight/2, A_ScreenWidth, A_ScreenHeight/2
  return

Tab & k::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth, A_ScreenHeight/2
  return

Tab & h::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth/2, A_ScreenHeight
  return

Tab & l::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, 0, A_ScreenWidth/2, A_ScreenHeight
  return

Tab & u::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth/2, A_ScreenHeight/2
  return

Tab & i::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, 0, A_ScreenWidth/2, A_ScreenHeight/2
  return

Tab & m::
  WinRestore, A
  WinMove, A,, 0, A_ScreenHeight/2, A_ScreenWidth/2, A_ScreenHeight/2
  return

Tab & ,::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, A_ScreenHeight/2, A_ScreenWidth/2, A_ScreenHeight/2
  return

Tab & space::
  WinGet, OutputVar, MinMax, A
  if (OutputVar == 1) {
    WinRestore, A
  } else {
    WinMaximize, A
  }
  return

$*Tab::Send {Blind}{Tab}
