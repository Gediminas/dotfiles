;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Workarounds :(

; Win/ResophNotes does not allow to use Alt+Space (==nvAlt)
; Alt+Space => Cmd+Alt+F11

; ResophNotes (~=nvAlt)
$^Space::Send #{F11}

; Everything (~=Finder search)
;$#!Space::Send #!{F11}

; Start menu (~=Spotlight)
;LAlt & Space::Send {LAlt up}{LCtrl down}{Esc}{LCtrl up}

; prevent space delay "gitp ush" (git push)

~*0::
~*1::
~*2::
~*3::
~*4::
~*5::
~*6::
~*7::
~*8::
~*9::
~*a::
~*b::
~*c::
~*d::
~*e::
~*f::
~*g::
~*h::
~*i::
~*j::
~*k::
~*l::
~*m::
~*n::
~*o::
~*p::
~*q::
~*r::
~*s::
~*t::
~*u::
;~*v::
~*w::
~*x::
~*y::
~*z::
~*,::
~*.::
~*;::
   return 



$*Tab::Send {Blind}{Tab}
