;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; For home-row (sdfv njkl) 

SetKeyDelay, -1

; n & 1::SendInput, {Blind}{F1}
; n & 2::SendInput, {Blind}{F2}
; n & 3::SendInput, {Blind}{F3}
; n & 4::SendInput, {Blind}{F4}
; n & 5::SendInput, {Blind}{F5}
; n & 6::SendInput, {Blind}{F6}
; n & 7::SendInput, {Blind}{F7}
; n & 8::SendInput, {Blind}{F8}
; n & 9::SendInput, {Blind}{F9}
; n & 0::SendInput, {Blind}{F10}
; n & -::SendInput, {Blind}{F11}
; n & =::SendInput, {Blind}{F12}

n & h::SendInput, {Blind}{Home}
n & j::SendInput, {Blind}{PgDn}
n & k::SendInput, {Blind}{PgUp}
n & l::SendInput, {Blind}{End}


n & b::SendInput, {Blind}n
n & v:: return
n & space:: return

; $*n::SendInput {Blind}{n} 
