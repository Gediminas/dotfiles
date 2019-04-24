; Media_Stop	Stop
;!+^j::
;  Send, {Media_Prev}
;Return
;
;!+^k::
;  Send, {Media_Play_Pause}
;Return
;
;!+^l::
;  Send, {Media_Next}
;Return
;
;!+^h::
;  Send, {Volume_Up}
;Return
;
;!+^n::
;  Send, {Volume_Down}
;Return
;
;!+^m::
;  Send, {Volume_Mute}
;Return


; Keeps script permanently running
#Persistent

; Avoids checking empty variables to see if they are environment variables
; Recommended for performance and compatibility with future AutoHotkey releases
#NoEnv

; Ensures that there is only a single instance of this script running
#SingleInstance, Force

;Determines whether invisible windows are "seen" by the script
DetectHiddenWindows, On

; Makes a script unconditionally use its own folder as its working directory
; Ensures a consistent starting directory
SetWorkingDir %A_ScriptDir%

; sets title matching to search for "containing" isntead of "exact"
SetTitleMatchMode, 2

;sets controlID to 0 every time the script is reloaded
controlID 		:= 0

return

;============================== Main Script ==============================
#IfWinNotActive, ahk_exe chrome.exe

ctrl & m::
	; Gets the control ID of google chrome
	ControlGet, controlID, Hwnd,,Chrome_RenderWidgetHostHWND1, Google Chrome
	
	; Focuses on chrome without breaking focus on what you're doing
	ControlFocus,,ahk_id %controlID%
	
	; Checks to make sure YouTube isn't the first tab before starting the loop
	; Saves time when youtube is the tab it's on
	IfWinExist, YouTube
	{
		ControlSend, Chrome_RenderWidgetHostHWND1, k , Google Chrome
		return
	}
	
	; Sends ctrl+1 to your browser to set it at tab 1
	ControlSend, , ^1, Google Chrome
	
	; Starts loop to find youtube tab
	Loop
	{
		IfWinExist, YouTube
		{
			break
		}
		
		;Scrolls through the tabs.
		ControlSend, ,{Control Down}{Tab}{Control Up}, Google Chrome
		
		; if the script acts weird and is getting confused, raise this number
		; Sleep, is measures in milliseconds. 1000 ms = 1 sec
		Sleep, 150
	}

	Sleep, 50

	; Sends the K button to chrome
	; K is the default pause/unpause of YouTube (People think space is. Don't use space!
	; It'll scroll you down the youtube page when the player doesn't have focus.
	;ControlSend, Chrome_RenderWidgetHostHWND1, k , Google Chrome
	Send {Media_Stop}
return

#IfWinNotActive