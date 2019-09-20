Space & g::		
  if (hyper = 1) {
    hyper := 0
  }
  else {
    hyper := 1
  }
  Return

#If (hyper = 1)
  space & f::
    WinActivateBottomOnCurrentVirtualDesktop("firefox.exe")
    hyper := 0
    Return

  f::
    WinActivateBottom("firefox.exe")
    hyper := 0
    Return


  d::
    WinActivateBottom("chrome.exe")
    hyper := 0
    Return

  e::
    WinActivateBottom("emacs.exe", "emacsclientw.exe -nqc -a notepad")
    hyper := 0
    Return

  v::
    WinActivateBottom("devenv.exe")
    hyper := 0
    Return

  t::
    WinActivateBottom("cmd.exe")
    hyper := 0
    Return

  c::
    WinActivateBottom("doublecmd.exe")
    hyper := 0
    Return

  space & m::
  m::
    WinActivateBottom("Messenger for Desktop.exe")
    hyper := 0
    Return

#If


WinActivateBottom(exe, path=False) {
  hyper := 0
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
  hyper := 0
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
  hyper := 0
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
  hyper := 0
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
