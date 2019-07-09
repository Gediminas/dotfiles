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

/*
*0::Send {Blind}0
*1::Send {Blind}1
*2::Send {Blind}2
*3::Send {Blind}3
*4::Send {Blind}4
*5::Send {Blind}5
*6::Send {Blind}6
*7::Send {Blind}7
*8::Send {Blind}8
*9::Send {Blind}9

$*a::Send {Blind}a
$*b::Send {Blind}b
$*c::Send {Blind}c
;*d::Send {Blind}d
*e::Send {Blind}e
*f::Send {Blind}f
*g::Send {Blind}g
*h::Send {Blind}h
*i::Send {Blind}i
*j::Send {Blind}j
*k::Send {Blind}k
*l::Send {Blind}l
*m::Send {Blind}m
*n::Send {Blind}n
*o::Send {Blind}o
*p::Send {Blind}p
*q::Send {Blind}q
*r::Send {Blind}r
*s::Send {Blind}s
*t::Send {Blind}t
*u::Send {Blind}u
*v::Send {Blind}v
*w::Send {Blind}w
*x::Send {Blind}x
*y::Send {Blind}y
*z::Send {Blind}z

*,::Send {Blind},
*.::Send {Blind}.
*;::Send {Blind};

*space::Send {Blind}{space} 
*tab::  Send {Blind}{tab} 

*/