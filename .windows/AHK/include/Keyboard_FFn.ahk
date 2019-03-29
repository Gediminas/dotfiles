;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable Shift

SetKeyDelay, 0

tickF := 0
tickG := 0

$*f::
  if (tickF = 0) {
    tickF := A_TickCount
    Send {Blind}{LShift Down}
  }
  Return

$*f up::
  diff := A_TickCount - tickF
  If (diff < 200) {
     Send {Blind}{LShift Up}{f}
   }
  Else {
    Send {Blind}{LShift Up}
  }
  tickF := 0
  Return

$*g::
  if (tickG = 0) {
    tickG := A_TickCount
    Send {Blind}{LCtrl Down}
  }
  Return

$*g up::
  diff := A_TickCount - tickG
  If (diff < 200) {
     Send {Blind}{LCtrl Up}{g}
   }
  Else {
    Send {Blind}{LCtrl Up}
  }
  tickG := 0
  Return


tickJ := 0
tickH := 0

$*j::
  if (tickJ = 0) {
    tickJ := A_TickCount
    Send {Blind}{RShift Down}
  }
  Return

$*j up::
  diff := A_TickCount - tickJ
  If (diff < 200) {
     Send {Blind}{RShift Up}{j}
   }
  Else {
    Send {Blind}{RShift Up}
  }
  tickJ := 0
  Return

$*h::
  if (tickH = 0) {
    tickH := A_TickCount
    Send {Blind}{RCtrl Down}
  }
  Return

$*h up::
  diff := A_TickCount - tickH
  If (diff < 200) {
     Send {Blind}{RCtrl Up}{h}
   }
  Else {
    Send {Blind}{RCtrl Up}
  }
  tickH := 0
  Return
  
<+d::Send {Esc}
<+v::return

>+k::Send {Esc}
>+n::Send {Enter}

/*
$*d::
  if (tickG == 0) {
    tickG := A_TickCount
    Send {Blind}{RCtrl Down}
  }
  Return

$*d up::
    diff := A_TickCount - tickG
  If (diff < 200) {
     Send {Blind}{RCtrl Up}{d}
   }
  Else {
    Send {Blind}{RCtrl Up}
  }
  tickG := 0
  Return
  */



 /*
$r::
   if GetKeyState("J", "P") {
       Send +r
   } else {
       Send r
   }
   return
 */

/*
j & 1::Send +1
j & 2::Send +2
j & 3::Send +3
j & 4::Send +4
j & 5::Send +5
j & 6::Send +6 
f & 7::Send +7
f & 8::Send +8
f & 9::Send +9
f & 0::Send +0
f & -::Send {_}
f & =::Send {+} 

j & q::Send +q
j & w::Send +w
j & e::Send +e
;j & r::Send +r
j & t::Send +t
f & y::Send +y
f & u::Send +u
f & i::Send +i
f & o::Send +o
f & p::Send +p

j & a::Send +a
j & s::Send +s
j & d::Send +d
j & f::Send +f
j & g::Send +g
f & h::Send +h
f & j::Send +j
f & k::Send +k
f & l::Send +l

j & z::Send +z
j & x::Send +x
j & c::Send +c
j & v::Send +v
j & b::Send +b
f & b::Send +b
f & n::Send +n
f & m::Send +m

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 

j & k::Send {Esc}
j & n::Send {Enter}

f & d::Send {Esc}
f & v::Send {Enter}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable Shift
/*
+1::return
+2::return
+3::return
+4::return
+5::return
+6::return
+7::return
+8::return
+9::return
+0::return
+-::return
+=::return

+q::return
+w::return
+e::return
+r::return
+t::return
+y::return
+u::return
+i::return
+o::return
+p::return

+a::return
+s::return
+d::return
+f::return
+g::return
+h::return
+j::return
+k::return
+l::return

+z::return
+x::return
+c::return
+v::return
+b::return
+n::return
+m::return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$*f::Send {Blind}{f}
$*j::Send {Blind}{j}
*/
