 ; WinGetPos,,, Width, Height, A

RButton & Enter::
/ & Enter::
  Send +!{Tab}
  return

RButton & f::
/ & f::
  WinRestore, A
  WinMove, A,, -5, -15+A_ScreenHeight/2, 20+A_ScreenWidth, -7+A_ScreenHeight/2
  return

RButton & d::
/ & d::
  WinRestore, A
  WinMove, A,, -5, 0, 20+A_ScreenWidth, -7+A_ScreenHeight/2
  return

RButton & s::
/ & s::
  WinRestore, A
  WinMove, A,, -5, 0, 10+A_ScreenWidth/2, -23+A_ScreenHeight
  return

RButton & g::
/ & g::
  WinRestore, A
  WinMove, A,, -10+A_ScreenWidth/2, 0, 15+A_ScreenWidth/2, -23+A_ScreenHeight
  return

RButton & e::
/ & e::
  WinRestore, A
  WinMove, A,, -5, 0, 10+A_ScreenWidth/2, -7+A_ScreenHeight/2
  return

RButton & r::
/ & r::
  WinRestore, A
  WinMove, A,, -10+A_ScreenWidth/2, 0, 15+A_ScreenWidth/2, -7+A_ScreenHeight/2
  return

RButton & x::
/ & x::
  WinRestore, A
  WinMove, A,, -5, -15+A_ScreenHeight/2, 10+A_ScreenWidth/2, -7+A_ScreenHeight/2
  return

RButton & c::
/ & c::
  WinRestore, A
  WinMove, A,, -10+A_ScreenWidth/2, -15+A_ScreenHeight/2, 15+A_ScreenWidth/2, -7+A_ScreenHeight/2
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
