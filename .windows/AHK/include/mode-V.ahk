;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; For home-row (sdfv njkl) for debugging c++

SetKeyDelay, -1

#If (GetKeyState("SPACE", "P"))

	v & q:: SendInput, {Blind}!^{F13}
	v & w:: SendInput, {Blind}!^{F14}
	v & e:: SendInput, {Blind}!^{F15}
	v & r:: SendInput, {Blind}!^{F16}
	v & t:: SendInput, {Blind}!^{F17}
	v & a:: SendInput, {Blind}!^{F18}
	v & s:: SendInput, {Blind}!^{F19}
	v & d:: SendInput, {Blind}!^{F20}
	v & f:: SendInput, {Blind}!^{F21}
	v & z:: SendInput, {Blind}!^{F22}
	v & x:: SendInput, {Blind}!^{F23}
	v & c:: SendInput, {Blind}!^{F24}

#If

v & 1::SendInput, {Blind}{F1}
v & 2::SendInput, {Blind}{F2}
v & 3::SendInput, {Blind}{F3}
v & 4::SendInput, {Blind}{F4}
v & 5::SendInput, {Blind}{F5}
v & 6::SendInput, {Blind}{F6}
v & 7::SendInput, {Blind}{F7}
v & 8::SendInput, {Blind}{F8}
v & 9::SendInput, {Blind}{F9}
v & 0::SendInput, {Blind}{F10}
v & -::SendInput, {Blind}{F11}
v & =::SendInput, {Blind}{F12}

v & q:: SendInput, {Blind}^{F13}
v & w:: SendInput, {Blind}^{F14}
v & e:: SendInput, {Blind}^{F15}
v & r:: SendInput, {Blind}^{F16}
v & t:: SendInput, {Blind}^{F17}
v & a:: SendInput, {Blind}^{F18}
v & s:: SendInput, {Blind}^{F19}
v & d:: SendInput, {Blind}^{F20}
v & f:: SendInput, {Blind}^{F21}
v & z:: SendInput, {Blind}^{F22}
v & x:: SendInput, {Blind}^{F23}
v & c:: SendInput, {Blind}^{F24}

v & g::SendInput, {Enter}
v & b::SendInput, {Blind}{v}
v & n::Return
v & space::Return

$*v::SendInput {Blind}{v}
