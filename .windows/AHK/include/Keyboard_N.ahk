;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; For home-row (sdfv njkl) 

n & h::SendInput, {Blind}{Home}
n & j::SendInput, {Blind}{PgDn}
n & k::SendInput, {Blind}{PgUp}
n & l::SendInput, {Blind}{End}
;n & Space::SendInput, {Blind}{Enter}

;space & n::
n & space:: return
n & b::SendInput, {Blind}{n}

$*n::send {Blind}{n} 
