;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; n/v + opposite => Shift

; https://gist.github.com/jitbit/e948cf198f54cbf3992c 
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.

SetKeyDelay, -1, -1, -1
; SetKeyDelay, -1
; SetControlDelay, -1
; SetWinDelay, -1
; SetMouseDelay, -1
; SetBatchLines, -1
; Process, Priority,, High
; ListLines Off
; #KeyHistory 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; n + opposite => Shift

n & 1:: Send +1
n & 2:: Send +2
n & 3:: Send +3
n & 4:: Send +4
n & 5:: Send +5
n & 6:: Send +6

n & q:: Send +q
n & w:: Send +w
n & e:: Send +e
n & r:: Send +r
n & t:: Send +t

n & a:: Send +a
n & s:: Send +s
n & d:: Send +d
n & f:: Send +f
n & g:: Send +g

n & `:: Send ~
n & z:: Send +z
n & x:: Send +x
n & c:: Send +c
n & v:: Send +v

n & b:: Send +b


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

