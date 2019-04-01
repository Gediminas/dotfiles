;Create shortcut to this file under: C:\Users\<YOURUSERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

#SingleInstance force
#Persistent

SetKeyDelay, -1

; SetKeyDelay, -1
; SetControlDelay, -1
; SetWinDelay, -1
; SetMouseDelay, -1
; SetBatchLines, -1
; Process, Priority,, High
; ListLines Off
; #KeyHistory 0
; #NoEnv

; # Win (Windows logo key)
; ! Alt
; ^ Control
; + Shift
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

; https://github.com/ahkscript/awesome-AutoHotkey
; https://autohotkey.com/docs/KeyList.htm

;#Include include\AutoReload.ahk

#Include LockScreen.ahk
#Include include\Keyboard_FJFn.ahk
#Include include\Keyboard_V.ahk
#Include include\Keyboard_Space.ahk
#Include include\Keyboard_Space-LT.ahk
#Include include\Keyboard_Space-Magic.ahk
#Include include\Keyboard_Win.ahk
#Include include\Keyboard_Workarounds.ahk
#Include include\CapsLockTapEscapeHoldControl.ahk


F5 & F6:: 
  SendInput, +^s
  Reload
  Return
  
$*F5::Send {Blind}{F5}

; HACK: Win/ResophNotes does not allow to use Alt+Space (==nvAlt)
!Space::#!F11

; #Include include\Keyboard.ahk

; #Include include\Keyboard_Space-FN.ahk
; #Include include\Keyboard_N.ahk
; #Include include\Keyboard_Dual.ahk
; #Include include\mouser6.ahk
; #Include include\AdvancedWindowSnap.ahk
; #Include include\AlwaysOnTop.ahk
; #Include include\Media.ahk
; #Include include\Screenshots.ahk
; #Include include\Spotlight.ahk
; #Include include\TabModifier.ahk

; GetOldestPIDFromProcessName(strProcessName) {

;   for oProc in ComObjGet("winmgmts:").ExecQuery("Select ProcessID,CreationDate from Win32_Process WHERE Name = '" strProcessName "'") {           
;     nOldestPID := (nOldestPIDCreationDate > oProc.CreationDate) ? oProc.ProcessID : nOldestPID ? nOldestPID : oProc.ProcessID
;     nOldestPIDCreationDate := oProc.CreationDate    
;   }
;   return nOldestPID
; }
; ; Tab & d::WinActivate, % "ahk_pid " GetOldestPIDFromProcessName("chrome.exe")
; Tab & d::
;   ; Activate an existing chrome.exe window, or open a new one
;   if WinExist("ahk_exe chrome.exe")
;     WinActivate, ahk_exe chrome.exe
;   else
;     Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
;   return    


ActivateOrDeactivateExe(exe, path=False) {
  If WinExist("ahk_exe " . exe) {
    If WinActive("ahk_exe " . exe) {
        Send, !{tab}
    } else {
      WinActivate ahk_exe %exe%
    }
  } else {
    If (path) {
      Run, %path%
    } else {
      Run, %exe%
    }
  }
}

Tab & q::ActivateOrDeactivateExe("notepad.exe")
Tab & e::ActivateOrDeactivateExe("emacs.exe", "runemacs.exe")
Tab & s::ActivateOrDeactivateExe("firefox.exe")
Tab & d::ActivateOrDeactivateExe("chrome.exe")
Tab & f::ActivateOrDeactivateExe("firefox.exe")
Tab & c::ActivateOrDeactivateExe("cmd.exe")
Tab & n::ActivateOrDeactivateExe("Messenger for Desktop.exe", "C:\Users\gds\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MessengerForDesktop.com\Messenger for Desktop.lnk")

$*Tab::SendInput {Blind}{Tab} 



; WheelUp::
; Send {WheelDown}
; Return
; WheelDown::
; Send {WheelUp}
; Return