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




b & q::WinActivateBottomOnCurrentVirtualDesktop("notepad.exe")
b & e::WinActivateBottomOnCurrentVirtualDesktop("emacs.exe", "emacsclientw.exe -nqc -a notepad")
b & s::WinActivateBottomOnCurrentVirtualDesktop("firefox.exe")
b & d::WinActivateBottomOnCurrentVirtualDesktop("chrome.exe")
b & f::WinActivateBottomOnCurrentVirtualDesktop("firefox.exe")
b & t::WinActivateBottomOnCurrentVirtualDesktop("cmd.exe")
b & c::WinActivateBottomOnCurrentVirtualDesktop("Messenger for Desktop.exe", "C:\Users\gds\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MessengerForDesktop.com\Messenger for Desktop.lnk")
b & v::WinActivateBottomOnCurrentVirtualDesktop("devenv.exe")
b & space::WinMinimize, A

$*b::SendInput {Blind}{b} 


space & d:: SendInput ^#{Left}
space & f::SendInput ^#{Right}

d & f:: SendInput ^#{Left}
d & v::SendInput ^#{Right}
$*d::SendInput {Blind}{d} 



; WheelUp::
; Send {WheelDown}
; Return
; WheelDown::
; Send {WheelUp}
; Return

ActivateOrDeactivateExe(exe, path=False) {
  If WinExist("ahk_exe " . exe) {
    If WinActive("ahk_exe " . exe) {
        Send, !{tab}
        ;WinActivateBottom, "ahk_exe " . exe
        ;AltTab
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

; https://stackoverflow.com/questions/50576354/how-to-make-ifwinactive-and-winactivatebottom-to-use-only-the-current-deskto

WinActivateBottomOnCurrentVirtualDesktop(exe, path=False) {
  LastWin := ""
  IfWinExist, ahk_exe %exe%
  {
    list := ""
    ; get a list of those windows on the current desktop
    WinGet, id, list, ahk_exe %exe%
    Loop, %id%
    {
      this_ID := id%A_Index%
      If IsWindowOnCurrentVirtualDesktop(this_ID)
        LastWin := this_ID ; retrieves the bottommost matching window ID
    }
    WinActivate, ahk_id %LastWin%
  }

  If (LastWin) {
    Return
  }

  If (path) {
    Run, %path%
  } else {
    Run, %exe%
  }
}

; https://autohotkey.com/boards/viewtopic.php?p=64295#p64295
; Indicates whether the provided window is on the currently active virtual desktop:

IsWindowOnCurrentVirtualDesktop(hWnd) {
    onCurrentDesktop := ""
    CLSID := "{aa509086-5ca9-4c25-8f95-589d3c07b48a}" 
    IID := "{a5cd92ff-29be-454c-8d04-d82879fb3f1b}" 
    IVirtualDesktopManager := ComObjCreate(CLSID, IID)  
    Error := DllCall(NumGet(NumGet(IVirtualDesktopManager+0), 3*A_PtrSize), "Ptr", IVirtualDesktopManager, "Ptr", hWnd, "IntP", onCurrentDesktop)
    ObjRelease(IVirtualDesktopManager)  
    if !(Error=0)
        return false, ErrorLevel := true
    return onCurrentDesktop, ErrorLevel := false
}