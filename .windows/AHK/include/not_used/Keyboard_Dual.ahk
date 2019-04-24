; AHK script 

; https://autohotkey.com/board/topic/104173-capslock-to-control-and-escape/
;SetCapsLockState Off
;CapsLock::
;	key=
;	Input, key, B C L0.3 T1, {Esc}
;	if (ErrorLevel = "Max")
;		Send {Ctrl Down}%key%
;	KeyWait, CapsLock
;	Return
;CapsLock up::
;	If key
;		Send {Ctrl Up}
;	Else
;		If (A_TimeSincePriorHotkey < 300)
;			Send, {Esc 2}
;	Return


;Enter::
;	key2=
;	Input, key2, B C L1 T1, {Enter}
;	if (ErrorLevel = "Max")
;		Tooltip "0"
;	Tooltip "1"
;	Send, {Enter 1}
;	Return
;Enter up::
;	Tooltip "2"
;	Send, {Enter 2}
;	Return