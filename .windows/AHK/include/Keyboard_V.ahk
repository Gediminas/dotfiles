;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; For home-row (sdfv njkl) for debugging c++

SetKeyDelay, -1

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

v & q::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F13}
	else
		SendInput, {Blind}^{F13}
	Return

v & w::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F14}
	else
		SendInput, {Blind}^{F14}
	Return

v & e::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F15}
	else
		SendInput, {Blind}^{F15}
	Return

v & r::
	If (GetKeyState("SPACE", "P")) {
		SendInput, {Blind}!^{F16}
	} else {
		SendInput, {Blind}^{F16}
	}
	Return

v & t::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F17}
	else
		SendInput, {Blind}^{F17}
	Return

v & a::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F18}
	else
		SendInput, {Blind}^{F18}
	Return

v & s::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F19}
	else
		SendInput, {Blind}^{F19}
	Return

v & d::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F20}
	else
		SendInput, {Blind}^{F20}
	Return

v & f::
	If (GetKeyState("SPACE", "P")) {
		SendInput, {Blind}!^{F21}
	}
	else {
		SendInput, {Blind}^{F21}
	}
	Return

v & z::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F22}
	else
		SendInput, {Blind}^{F22}
	Return

v & x::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F23}
	else
		SendInput, {Blind}^{F23}
	Return

 v & c::
	If (GetKeyState("SPACE", "P"))
		SendInput, {Blind}!^{F24}
	else
		SendInput, {Blind}^{F24}
	Return

v & g::SendInput, {Enter}


v & b::SendInput, {Blind}{v}
v & n:: return
v & space:: return

$*v::SendInput {Blind}{v}
