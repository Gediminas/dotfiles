; AHK script 



;;;;;;;;;;;;;;;;;;;;;;
;; DATE

:R*?:dddyyy::
	FormatTime, CurrentDateTime,, yyyy-MM-dd 
	SendInput %CurrentDateTime%
	Return
:R*?:dddttt::
	FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm 
	SendInput %CurrentDateTime%
	Return
:R*?:dddwww::
	FormatTime, timestamp,, yyyy-MM-dd
	FormatTime, yearweek,, YWeek
	FormatTime, weekday,, WDay
	week := SubStr(yearweek, -1)
	letter := ["S","I","A","T","K","V","H"]
	weekday := letter[weekday]
	SendInput %timestamp% w%week%-%weekday%
	Return

