; Program: LockScreen utility
; Author:  Dean Householder
; Website: http://www.deanhouseholder.com/
; Version: 1.4 1/08/2015
; Copyright: GPL

#SingleInstance, Force
#Persistent

IniPath = %A_ScriptDir%\LockScreen.ini

If !A_IsCompiled
	Menu, Tray, Icon, %A_ScriptDir%\LockScreen.ico
Else
	Menu, Tray, Icon, %A_ScriptName%

IfNotExist, %IniPath%
{
	FileAppend, , %IniPath%, CP0
	IniWrite, ^6,   %IniPath%, LockScreen, LockHotkeyStart
	IniWrite, F10,  %IniPath%, LockScreen, LockHotkeyEnd
	IniWrite, true, %IniPath%, LockScreen, TurnOffScreen
	IniWrite, true, %IniPath%, LockScreen, RunScreenSaver
	IniWrite, 1,    %IniPath%, LockScreen, UnlockDuration
}

IniRead, LockHotkeyStart, %IniPath%, LockScreen, LockHotkeyStart
IniRead, LockHotkeyEnd,   %IniPath%, LockScreen, LockHotkeyEnd
IniRead, TurnOffScreen,   %IniPath%, LockScreen, TurnOffScreen
IniRead, RunScreenSaver,  %IniPath%, LockScreen, RunScreenSaver
IniRead, UnlockDuration,  %IniPath%, LockScreen, UnlockDuration

Hotkey, %LockHotkeyStart%, StartLock, UseErrorLevel
Hotkey, ~%LockHotkeyEnd%, EndLock, UseErrorLevel
Return


StartLock:
	IfWinNotExist, BlackScreen1 ahk_class AutoHotkeyGUI
	{
		SetFormat Integer, Dec
		SysGet, Monitors, MonitorCount ; Count monitors
		Loop, %Monitors% ; Loop through each monitor
		{
			SysGet, Mon%A_Index%, Monitor, %A_Index% ; Get this monitor's stats
			Width := Mon%A_Index%Right - Mon%A_Index%Left
			Height := Mon%A_Index%Bottom - Mon%A_Index%Top
			;MsgBox,  % "Left: " Mon%A_Index%Left " | Top: " Mon%A_Index%Top " | Right: " Mon%A_Index%Right " | Bottom: " Mon%A_Index%Bottom "`n" Width "x" Height

			; Create a large black window to cover all other windows for each monitor
			Gui %A_Index%: -Caption +ToolWindow +AlwaysOnTop
			Gui %A_Index%: Color, Black
			Gui %A_Index%: Font, s36 c555555
			Gui %A_Index%: Add, Text, % "x" Width//2-85 " y" Height//2-80, Locked
			Gui %A_Index%: Show, % "x" Mon%A_Index%Left " y" Mon%A_Index%Top " w" Width " h" Height Hide, BlackScreen%A_Index%
			Gui %A_Index%: Show
		}
		IfEqual, RunScreenSaver, true
		{
			RegRead, ScreenSaver, HKCU, Control Panel\Desktop, SCRNSAVE.EXE
			If (ScreenSaver != "")
			{
				Run, %ScreenSaver% /s ; Start the Screen Saver
				;SendMessage, 0x112, 0xF140, 0,, Program Manager ; 0x112 is WM_SYSCOMMAND -- 0xF140 is SC_SCREENSAVE
			}
		}
		IfEqual, TurnOffScreen, true
		{
			SetFormat Integer, Hex
			Loop 255 ; Loop through every character
			{
				Hotkey % "*vk" SubStr(A_Index+256,4), TurnOffScreen ; Set a hotkey for each character to turn off screen--very annoying
			}
		}
		WinActivate, BlackScreen1 ; Try to cover up the start bar
	}
Return

EndLock:
	IfWinExist BlackScreen1 ahk_class AutoHotkeyGUI
	{
    If (UnlockDuration > 0) {
		  KeyWait, %LockHotkeyEnd%, T%UnlockDuration% ; Expect the end Lockkey to be pressed for UnlockDuration second(s)
			If ErrorLevel
			{
				SetFormat Integer, Dec
				SysGet, Monitors, MonitorCount ; Count monitors again in case it changed while locked
				Loop, %Monitors%
				{
					Gui %A_Index%: Destroy ; Kill previous black screen GUI's
				}
				SetFormat Integer, Hex
				Loop 255 ; Loop through every character
				{
					Hotkey % "*vk" SubStr(A_Index+256,4), Off
				}
;				Send, {Shift} ; Press a key to wake up the screensaver
				Reload
			}
		} else {
		  Reload
		}
	}
Return

TurnOffScreen:
	SendMessage, 0x112, 0xF170, 2,, Program Manager ; Turn off the monitor(s)
Return
