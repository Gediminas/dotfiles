;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Workarounds :(

; Win/ResophNotes does not allow to use Alt+Space (==nvAlt)
; Alt+Space => Cmd+Alt+F11

!Space::#!F11

; prevent space up delay "gitp ush" (git push)

$*a::SendInput {Blind}a
$*b::SendInput {Blind}b
$*c::SendInput {Blind}c
$*d::SendInput {Blind}d
$*e::SendInput {Blind}e
$*f::SendInput {Blind}f
$*g::SendInput {Blind}g
$*h::SendInput {Blind}h
$*i::SendInput {Blind}i
$*j::SendInput {Blind}j
$*k::SendInput {Blind}k
$*l::SendInput {Blind}l
$*m::SendInput {Blind}m
$*n::SendInput {Blind}n
$*o::SendInput {Blind}o
$*p::SendInput {Blind}p
$*q::SendInput {Blind}q
$*r::SendInput {Blind}r
$*s::SendInput {Blind}s
$*t::SendInput {Blind}t
$*u::SendInput {Blind}u
$*v::SendInput {Blind}v
$*w::SendInput {Blind}w
$*x::SendInput {Blind}x
$*y::SendInput {Blind}y
$*z::SendInput {Blind}z
$*,::SendInput {Blind},
$*.::SendInput {Blind}.
$*space::Send {Blind}{space} 
$*tab::Send {Blind}{tab} 
