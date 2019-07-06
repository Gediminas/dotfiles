; Note: This implementation assumes an en-US QWERTY layout.


SendMode Input
#NoEnv
#SingleInstance force


options := {delay: 130, timeout: 200, doublePress: -1, swap_backtick_escape: false, mode: "ijkl"}
loop %0% {
	arg := %A_Index%
	argSplit := StrSplit(arg, "=")
	option := argSplit[1]
	value := argSplit[2]
	options[option] := value
}


#Include include\dual\dual.ahk
dual := new Dual


#Include include\dual\defaults.ahk


#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.

*i::dual.comboKey({F23: "I"})
*w::dual.comboKey({F23: "W"})
*k::dual.comboKey({F23: "K"})
*l::dual.comboKey({F23: "L"})


*v::
*v UP::dual.combine("F23", A_ThisHotkey, {delay: options.delay, timeout: options.timeout, doublePress: options.doublePress})

*BackSpace::dual.comboKey({F23: "Delete"})

*\::dual.comboKey({F23: "Insert"})

*b::dual.comboKey({F23: "Space"})

*1::dual.comboKey({F23: "F1"})
*2::dual.comboKey({F23: "F2"})
*3::dual.comboKey({F23: "F3"})
*4::dual.comboKey({F23: "F4"})
*5::dual.comboKey({F23: "F5"})
*6::dual.comboKey({F23: "F6"})
*7::dual.comboKey({F23: "F7"})
*8::dual.comboKey({F23: "F8"})
*9::dual.comboKey({F23: "F9"})
*0::dual.comboKey({F23: "F10"})
*-::dual.comboKey({F23: "F11"})
*=::dual.comboKey({F23: "F12"})

*p::dual.comboKey({F23: "PrintScreen"})
*[::dual.comboKey({F23: "ScrollLock"})
*]::dual.comboKey({F23: "Pause"})

*e::dual.comboKey({F23: "Escape"})
*`::dual.comboKey("Escape", {F23: "``"})
#If