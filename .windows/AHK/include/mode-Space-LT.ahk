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

m & n::
n & space::
n & m::
m & space::
  Return

#If (not GetKeyState("n", "P") and not GetKeyState("Shift", "P"))
  m & a::Send {Blind}ą
  m & c::Send {Blind}č
  m & e::Send {Blind}ę
  m & d::Send {Blind}ė
  m & r::Send {Blind}į
  m & s::Send {Blind}š
  m & v::Send {Blind}ų
  m & f::Send {Blind}ū
  m & q::Send {Blind}„
  m & w::Send {Blind}“
  m & `::Send {Blind}–
  m & z::Send {Blind}ž
  m & t::Return
  m & x::Return

#If (GetKeyState("n", "P") or GetKeyState("Shift", "P"))
  m & a::Send {Blind}Ą
  m & c::Send {Blind}Č
  m & e::Send {Blind}Ę
  m & d::Send {Blind}Ė
  m & r::Send {Blind}Į
  m & s::Send {Blind}Š
  m & v::Send {Blind}Ų
  m & f::Send {Blind}Ū
  m & q::Send „“{Left}
  m & w::Send „“{Left}
  m & `::Send {Blind}–
  m & z::Send {Blind}Ž
  m & t::Return
  m & x::Return

#If

