;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Debugging at home (sdfv)
;; v + sameSide => Alt+Ctrl

#If (GetKeyState("SPACE", "P"))
    v & tab:: SendInput, {Blind}+!^{F13}
	v & q:: SendInput, {Blind}+!^q
	v & w:: SendInput, {Blind}+!^w
	v & e:: SendInput, {Blind}+!^e
	v & r:: SendInput, {Blind}+!^r
	v & t:: SendInput, {Blind}+!^t
	v & a:: SendInput, {Blind}+!^a
	v & s:: SendInput, {Blind}+!^s
	v & d:: SendInput, {Blind}+!^d
	v & f:: SendInput, {Blind}+!^f
	v & g:: SendInput, {Blind}+!^g
	v & z:: SendInput, {Blind}+!^z
	v & x:: SendInput, {Blind}+!^x
	v & c:: SendInput, {Blind}+!^c
#If

v & tab:: SendInput, {Blind}!^{F13}
v & q:: SendInput, {Blind}!^q
v & w:: SendInput, {Blind}!^w
v & e:: SendInput, {Blind}!^e
v & r:: SendInput, {Blind}!^r
v & t:: SendInput, {Blind}!^t
v & a:: SendInput, {Blind}!^a
v & s:: SendInput, {Blind}!^s
v & d:: SendInput, {Blind}!^d
v & f:: SendInput, {Blind}!^f
v & g:: SendInput, {Blind}!^g
v & z:: SendInput, {Blind}!^z
v & x:: SendInput, {Blind}!^x
v & c:: SendInput, {Blind}!^c

; *v::Send {Blind}v
v::Send v

+v::Send +v
^v::Send ^v
!v::Send !v
#v::Send #v

+^v::Send +^v
+!v::Send +!v
+#v::Send +#v
