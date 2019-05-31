; Space + [1..9,0,-,=] => Lithuanian letters

; #If GetKeyState("Shift", "P")
; Space & 1::SendInput, {Blind}Ą
; Space & 2::SendInput, {Blind}Č
; Space & 3::SendInput, {Blind}Ę
; Space & 4::SendInput, {Blind}Ė
; Space & 5::SendInput, {Blind}Į
; Space & 6::SendInput, {Blind}Š
; Space & 7::SendInput, {Blind}Ų
; Space & 8::SendInput, {Blind}Ū
; Space & 9::SendInput, {Blind}„
; Space & 0::SendInput, {Blind}“
; Space & -::SendInput, {Blind}–
; Space & =::SendInput, {Blind}Ž
; #If
; Space & 1::SendInput, {Blind}ą
; Space & 2::SendInput, {Blind}č
; Space & 3::SendInput, {Blind}ę
; Space & 4::SendInput, {Blind}ė
; Space & 5::SendInput, {Blind}į
; Space & 6::SendInput, {Blind}š
; Space & 7::SendInput, {Blind}ų
; Space & 8::SendInput, {Blind}ū
; Space & 9::SendInput, {Blind}„
; Space & 0::SendInput, {Blind}“
; Space & -::SendInput, {Blind}–
; Space & =::SendInput, {Blind}ž

n & .::Return
. & n::Return

#If (not GetKeyState("n", "P") and not GetKeyState("Shift", "P"))
  . & a::Send {Blind}ą
  . & c::Send {Blind}č
  . & e::Send {Blind}ę
  . & d::Send {Blind}ė
  . & r::Send {Blind}į
  . & s::Send {Blind}š
  . & v::Send {Blind}ų
  . & f::Send {Blind}ū
  . & q::Send {Blind}„
  . & w::Send {Blind}“
  . & `::Send {Blind}–
  . & z::Send {Blind}ž
  . & t::Return
  . & x::Return

#If (GetKeyState("n", "P") or GetKeyState("Shift", "P"))
  . & a::Send {Blind}Ą
  . & c::Send {Blind}Č
  . & e::Send {Blind}Ę
  . & d::Send {Blind}Ė
  . & r::Send {Blind}Į
  . & s::Send {Blind}Š
  . & v::Send {Blind}Ų
  . & f::Send {Blind}Ū
  . & q::Send „“{Left}
  . & w::Send „“{Left}
  . & `::Send {Blind}–
  . & z::Send {Blind}Ž
  . & t::Return
  . & x::Return

#If

n & ,::Return
, & n::Return

#If (not GetKeyState("n", "P"))

  , & q::Send |
  , & w::Send ?
  , & e::Send [
  , & r::Send ]
  , & t::Send ``

  , & a::Send \
  , & s::Send /
  , & d::Send (
  , & f::Send )
  , & g::Send `"

  , & `::Return
  , & z::Send {,}
  , & x::Send {{}
  , & c::Send {}}
  , & v::Send {'}
  , & b::Send {,}

#If (GetKeyState("n", "P"))
  , & 4::Send ${{}{}}{Left} 
  , & 5::Send `%`%{Left}

  , & q::Send {,}
  , & w::Send {,}
  , & e::Send []{Left}
  , & r::Send {,}
  , & t::Send ````{Left}

  , & a::Send {,}
  , & s::Send {,}
  , & d::Send (){Left}
  , & f::Send {,}
  , & g::Send `"`"{Left}

  , & `::Return
  , & z::Send {,}
  , & x::Send {{}{}}{Left}
  , & c::Send {,}
  , & v::Send ''{Left}
  , & b::Send {,}

  , & space::Send {Enter}

#If