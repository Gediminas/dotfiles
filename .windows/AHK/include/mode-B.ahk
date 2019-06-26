;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; B-mode (Hyper key)


;b & q::WinActivateBottomOnCurrentVirtualDesktop("notepad.exe")
;b & e::WinActivateBottomOnCurrentVirtualDesktop("emacs.exe", "emacsclientw.exe -nqc -a notepad")
;b & s::WinActivateBottomOnCurrentVirtualDesktop("firefox.exe")
;b & d::WinActivateBottomOnCurrentVirtualDesktop("chrome.exe")
;b & f::WinActivateBottomOnCurrentVirtualDesktop("firefox.exe")
;b & t::WinActivateBottomOnCurrentVirtualDesktop("cmd.exe")
b & c::WinActivateBottomOnCurrentVirtualDesktop("doublecmd.exe")
;b & m::WinActivateBottomOnCurrentVirtualDesktop("Messenger for Desktop.exe", "C:\Users\gds\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MessengerForDesktop.com\Messenger for Desktop.lnk")
;b & v::WinActivateBottomOnCurrentVirtualDesktop("devenv.exe")
;b & space::WinMinimize, A

#If GetKeyState("RCtrl", "P")
  Space & f::WinActivateBottom("firefox.exe")
  Space & d::WinActivateBottom("chrome.exe")
  Space & e::WinActivateBottom("emacs.exe", "emacsclientw.exe -nqc -a notepad")
  Space & v::WinActivateBottom("devenv.exe")
  Space & t::WinActivateBottom("cmd.exe")
  Space & c::WinActivateBottom("doublecmd.exe")
  Space & m::WinActivateBottom("Messenger for Desktop.exe")
#If

; https://stackoverflow.com/questions/50576354/how-to-make-ifwinactive-and-winactivatebottom-to-use-only-the-current-deskto

WinActivateBottom(exe, path=False) {
  LastWin := ""
  IfWinExist, ahk_exe %exe%
  {
    list := ""
    ; get a list of those windows on the current desktop
    WinGet, id, list, ahk_exe %exe%
    Loop, %id%
    {
      this_ID := id%A_Index%
      LastWin := this_ID ; retrieves the bottommost matching window ID
    }
    WinActivate, ahk_id %LastWin%
  }

  If (LastWin) {
    Return
  }

  If (path) {
    ;Run, %path%
  } else {
    ;Run, %exe%
  }
}

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
      ;Run, %path%
    } else {
      ;Run, %exe%
    }
  }
}
