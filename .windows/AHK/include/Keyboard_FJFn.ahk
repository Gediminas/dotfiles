;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable Shift

SetKeyDelay, -1


#If (GetKeyState("j", "P")) and (not WinActive ahk_exe cmd.exe)

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

#If (GetKeyState("f", "P")) and (not WinActive ahk_exe cmd.exe)

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
`;:+:
'::+'
\::+\

n::+n
m::+m
,::+,
.::+.
/::+/

b::+b
d::escape
v::enter

#If


$*f:: tickF := A_TickCount
$*f up::
  If ((A_TickCount - tickF) < 150) {
    Send {Blind}{f}
  }
  Return

$*j:: tickJ := A_TickCount
$*j up::
  If ((A_TickCount - tickJ) < 150) {
    Send {Blind}{j}
  }
  Return

