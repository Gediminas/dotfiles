;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 

SetKeyDelay, 0

f & y::Send +y
f & u::Send +u
f & i::Send +i
f & o::Send +o
f & p::Send +p

f & h::Send +h
f & j::Send +j
f & k::Send +k
f & l::Send +l

f & b::Send +b
f & n::Send +n
f & m::Send +m

f & 7::Send +7
f & 8::Send +8
f & 9::Send +9
f & 0::Send +0
f & -::Send _
f & =::Send {+} 

f & d::Send {Esc}

$*f::Send {Blind}{f}