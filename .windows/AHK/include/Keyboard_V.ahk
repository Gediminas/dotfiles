;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; For home-row (sdfv njkl) for debugging c++

space & v::
v & space::
return

v & q::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F13}
	else
		Send, {Blind}^{F13}
	Return

v & w::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F14}
	else
		Send, {Blind}^{F14}
	Return

v & e::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F15}
	else
		Send, {Blind}^{F15}
	Return

v & r::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F16}
	else
		Send, {Blind}^{F16}
	Return

v & t::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F17}
	else
		Send, {Blind}^{F17}
	Return

v & a::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F18}
	else
		Send, {Blind}^{F18}
	Return

v & s::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F19}
	else
		Send, {Blind}^{F19}
	Return

v & d::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F20}
	else
		Send, {Blind}^{F20}
	Return

v & f::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F21}
	else
		Send, {Blind}^{F21}
	Return

v & z::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F22}
	else
		Send, {Blind}^{F22}
	Return

v & x::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F23}
	else
		Send, {Blind}^{F23}
	Return

v & c::
	If (GetKeyState("SPACE", "P"))
		Send, {Blind}!^{F24}
	else
		Send, {Blind}^{F24}
	Return

v & g::Send, {Enter}

$*v::send {Blind}{v} 
