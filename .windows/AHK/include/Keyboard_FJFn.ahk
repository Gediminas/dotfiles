;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable Shift

SetKeyDelay, 0


;#IfWinNotActive ahk_exe cmd.exe

$*f:: tickF := A_TickCount

$*f up::
  If ((A_TickCount - tickF) < 200) {
    Send {Blind}{f}
  }
Return

$*j:: tickJ := A_TickCount

$*j up::
  If ((A_TickCount - tickJ) < 200) {
    Send {Blind}{j}
  }
Return

;#IfWinNotActive


#If, GetKeyState("j", "P")

1::+1
2::+2
3::+3
4::+4
5::+5
6::+6

q::+q
w::+w
e::+e
r::+r
t::+t

a::+a
s::+s
d::+d
f::+f
g::+g

`::~
z::+z
x::+x
c::+c
v::+v
b::+b

k::escape
n::enter

#If, GetKeyState("f", "P")

7::+7
8::+8
9::+9
0::+0
-::+-
=::+=

y::+y
u::+u
i::+i
o::+o
p::+p
[::+[
]::+]

h::+h
j::+j
k::+k
l::+l
`;:::
'::+'
\::?

n::+n
m::+m
,::+,
.::+.
/::+/

b::+b

#If

