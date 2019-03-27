;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 

SetKeyDelay, 0

;j & 1::SendInput, {Blind}{F1}
;j & 2::SendInput, {Blind}{F2}
;j & 3::SendInput, {Blind}{F3}
;j & 4::SendInput, {Blind}{F4}
;j & 5::SendInput, {Blind}{F5}
;j & 6::SendInput, {Blind}{F6}
;j & 7::SendInput, {Blind}{F7}
;j & 8::SendInput, {Blind}{F8}
;j & 9::SendInput, {Blind}{F9}
;j & 0::SendInput, {Blind}{F10}
;j & -::SendInput, {Blind}{F11}
;j & =::SendInput, {Blind}{F12}

j & q::Send +q
j & w::Send +w
j & e::Send +e
j & r::Send +r
j & t::Send +t

j & a::Send +a
j & s::Send +s
j & d::Send +d
j & f::Send +f
j & g::Send +g

j & z::Send +z
j & x::Send +x
j & c::Send +c
j & v::Send +f
j & b::Send +f

j & 1::Send +1
j & 2::Send +2
j & 3::Send +3
j & 4::Send +4
j & 5::Send +5
j & 6::Send +6 

j & k::Send {Esc}

;+q::return
;+w::return
;+e::return
;+r::return
;+t::return
;+a::return
;+s::return
;+d::return
;+f::return
;+g::return
;+z::return
;+x::return
;+c::return
;+v::return
;+b::return
;+1::return
;+2::return
;+3::return
;+4::return
;+5::return
;+6::return

$*j::Send {Blind}{j}
