;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable Shift

SetKeyDelay, 0

$*f:: tickF := A_TickCount

$*f up::
  If ((A_TickCount - tickF) < 200) {
    Send {f}
  }
Return

$*j:: tickJ := A_TickCount

$*j up::
  If ((A_TickCount - tickJ) < 200) {
    Send {j}
  }
Return

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
space::space

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
