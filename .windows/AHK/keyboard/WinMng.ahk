 ; WinGetPos,,, Width, Height, A

RButton & Enter::
/ & Enter::
  Send +!{Tab}
  return

RButton & f::
/ & f::
  WinRestore, A
  WinMove, A,, 0, A_ScreenHeight/2, A_ScreenWidth, A_ScreenHeight/2
  return

RButton & d::
/ & d::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth, A_ScreenHeight/2
  return

RButton & s::
/ & s::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth/2, A_ScreenHeight
  return

RButton & g::
/ & g::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, 0, A_ScreenWidth/2, A_ScreenHeight
  return

RButton & e::
/ & e::
  WinRestore, A
  WinMove, A,, 0, 0, A_ScreenWidth/2, A_ScreenHeight/2
  return

RButton & r::
/ & r::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, 0, A_ScreenWidth/2, A_ScreenHeight/2
  return

RButton & x::
/ & x::
  WinRestore, A
  WinMove, A,, 0, A_ScreenHeight/2, A_ScreenWidth/2, A_ScreenHeight/2
  return

RButton & c::
/ & c::
  WinRestore, A
  WinMove, A,, A_ScreenWidth/2, A_ScreenHeight/2, A_ScreenWidth/2, A_ScreenHeight/2
  return

RButton & space::
/ & space::
  WinGet, OutputVar, MinMax, A
  if (OutputVar == 1) {
    WinRestore, A
  } else {
    WinMaximize, A
  }
  return

$*/::Send {Blind}{/}
