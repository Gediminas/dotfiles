;https://superuser.com/questions/592970/can-i-make-ctrlalt-not-act-like-altgr-on-windows

<^>!a::SendInput !a
<^>!b::SendInput !b
<^>!c::SendInput !c
<^>!d::SendInput !d
<^>!f::SendInput !f
<^>!g::SendInput !g
<^>!h::SendInput !h
<^>!i::SendInput !i
<^>!j::SendInput !j
<^>!k::SendInput !k
<^>!l::SendInput !l
<^>!m::SendInput !m
<^>!n::SendInput !n
<^>!o::SendInput !o
<^>!p::SendInput !p
<^>!q::SendInput !q
<^>!r::SendInput !r
<^>!t::SendInput !t
<^>!u::SendInput !u
<^>!v::SendInput !v
<^>!w::SendInput !w
<^>!x::SendInput !x
<^>!y::SendInput !y
<^>!z::SendInput !z


;https://autohotkey.com/board/topic/104173-capslock-to-control-and-escape/

SetCapsLockState Off

CapsLock::
	key=
	Input, key, B C L1 T1, {Esc}
	if (ErrorLevel = "Max")
		Send {Ctrl Down}%key%
	KeyWait, CapsLock
	Return
CapsLock up::
	If key
		Send {Ctrl Up}
	else
		if (A_TimeSincePriorHotkey < 1000)
			Send, {Esc 2}
	Return
