;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; n/v + opposite => Shift

SetKeyDelay, -1, -1, -1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; n + opposite => Shift

n & 1:: SendInput +1
n & 2:: SendInput +2
n & 3:: SendInput +3
n & 4:: SendInput +4
n & 5:: SendInput +5
n & 6:: SendInput +6

n & q:: SendInput +q
n & w:: SendInput +w
n & e:: SendInput +e
n & r:: SendInput +r
n & t:: SendInput +t

n & a:: SendInput +a
n & s:: SendInput +s
n & d:: SendInput +d
n & f:: SendInput +f
n & g:: SendInput +g

n & `:: SendInput ~
n & z:: SendInput +z
n & x:: SendInput +x
n & c:: SendInput +c
n & v:: SendInput +v

n & b:: SendInput +b


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; v + opposite => Shift

v & 7:: Send +7
v & 8:: Send +8
v & 9:: Send +9
v & 0:: Send +0
v & -:: Send +-
v & =:: Send +`=

v & y:: Send +y
v & u:: Send +u
v & i:: Send +i
v & o:: Send +o
v & p:: Send +p
v & [:: Send +[
v & ]:: Send +]

v & h:: Send +h
v & j:: Send +j
v & k:: Send +k
v & l:: Send +l
v & `;::Send +`;
v & ':: Send +'
v & \:: Send +\

v & n:: Send +n
v & m:: Send +m
v & ,:: Send +,
v & .:: Send +.
v & /:: Send +/

v & b:: Send +b


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; n + same-side => Shift

;;n & j::     Send escape
;;n & space:: Send enter


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; v + same-side => Shift

;;v & f::     Send escape
;;v & space:: Send ^v


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$*n::SendInput {Blind}{n} 
$*v::SendInput {Blind}{v} 
