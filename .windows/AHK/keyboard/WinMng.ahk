 ; WinGetPos,,, Width, Height, A

#!^Enter::Send +!{Tab}

#!^j::
  WinRestore, A
  WinMove, A,, 0, A_ScreenHeight/2, A_ScreenWidth, A_ScreenHeight/2
  return

#!^k::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth, A_ScreenHeight/2
  return

#!^h::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth/2, A_ScreenHeight
  return

#!^l::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, 0, A_ScreenWidth/2, A_ScreenHeight
  return

#!^u::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth/2, A_ScreenHeight/2
  return

#!^i::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, 0, A_ScreenWidth/2, A_ScreenHeight/2
  return

#!^m::
  WinRestore, A
  WinMove, A,, 0, A_ScreenHeight/2, A_ScreenWidth/2, A_ScreenHeight/2
  return

#!^,::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, A_ScreenHeight/2, A_ScreenWidth/2, A_ScreenHeight/2
  return

#!^space::
  WinGet, OutputVar, MinMax, A
  if (OutputVar == 1) {
    WinRestore, A
  } else {
    WinMaximize, A
  }
  return

