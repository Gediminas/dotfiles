; Hyper Layer*/

`; & a::Activate("resophnotes.exe", "")
`; & z::Activate("thunderbird.exe", "MozillaWindowClass")
`; & f::Activate("firefox.exe", "MozillaWindowClass")
`; & e::Activate("emacs.exe", "Emacs")
`; & d::Activate("emacs.exe", "Emacs")
`; & x::Activate("devenv.exe", "")
`; & c::Activate("cmd.exe", "")

`; & g::{
    Clss := WinGetClass("A")
    ToolTip "Class: " . Clss, 0, 0
    Return
}

`; & w::{
  If WinActive("ahk_exe emacs.exe") {
    SendInput "{Esc}:w{Enter}"
  }
  Reload
  Return
}

$*`;::Send("{Blind}`;")

;     WinActivateBottom("doublecmd.exe")
;     WinActivateBottom("Messenger for Desktop.exe")

Activate(exe, clss, path:=False) {

    ; if WinExist("ahk_exe" . exe) {
    ;     try {
    ;         ; count := WinGetCount("ahk_exe " . exe . " ahk_class " . clss)
    ;         ; ToolTip "count: " . count, 0, 0

    ;         ; WinActivate("ahk_exe " . exe . " ahk_class " . clss)

    ;         IDLast := WinGetIDLast("ahk_exe " . exe . " ahk_class " . clss)
    ;         WinActivate("ahk_id" . IDLast)
    ;     } catch e {
    ;         ToolTip "Error ", 0, 0
    ;     }
    ; } else {
    ;     ToolTip exe . " not lauched", 0, 0
    ; }

    ; ids := WinGetList("ahk_exe" . exe,, "Program Manager")
    ids := WinGetList("ahk_exe " . exe . " ahk_class " . clss,, "Program Manager")
    ;Tooltip "count: " . ids.Length

    ;for this_id in ids {
        ;this_id := ids[1]

    Last_id := ''
    Loop ids.Length {
        i := ids.Length + 1 - A_Index
        this_id := ids[i]
        this_title := WinGetTitle(this_id)
        ; this_class := WinGetClass(this_id)
        ; this_ExStyle := WinGetExStyle(this_id)
        if (this_title) {
            WinActivate this_id
            Last_id := this_id
            ;Tooltip "i: " . i . "`nTITLE: " . this_title . "`nCLASS: " . this_class, 0, 0
            ;Sleep 5000
            ;break
        }
    }
    ; if (Last_id) {
    ;     WinActivate Last_id
    ; }
}

ActivateBottom(exe, path:=False) {
    WinActivate("ahk_exe" . exe)


    ;     WinActivateBottom("ahk_id" . IDLast)
    ; ids := WinGetList("ahk_exe" . exe,, "Program Manager")
    ; for this_id in ids {
    ;     WinActivate this_id
    ;     this_class := WinGetClass(this_id)
    ;     this_title := WinGetTitle(this_id)
    ;     Result := MsgBox(
    ;         (
    ;             "Visiting All Windows
    ;             " A_Index " of " ids.Length "
    ;             ahk_id " this_id "
    ;             ahk_class " this_class "
    ;             " this_title "

    ;             Continue?"
    ;         ),, 4)
    ;     if (Result = "No")
    ;         break
    ; }

    ; HotIfWinActive "ahk_exe" . exe
    ; try {
    ;     windows := WinGetList("ahk_exe" . exe)
    ;     ToolTip "windows: " . windows, 0, 0

    ;     IDLast := WinGetIDLast("ahk_exe" . exe)
    ;     WinActivateBottom("ahk_id" . IDLast)
    ; } catch e {
    ;     if GetKeyState("Shift") {
    ;         Run(exe)
    ;         ;ToolTip "Launching " . exe, 0, 0
    ;     } else {
    ;         ;ToolTip "Not lauched " . exe, 0, 0
    ;     }
    ; }
    ; HotIf
}

; WinActivateBottomOnCurrentVirtualDesktop(exe, path=False) {
;   hyper := 0
;   LastWin := ""
;   IfWinExist, ahk_exe %exe%
;   {
;     list := ""
;     ; get a list of those windows on the current desktop
;     WinGet, id, list, ahk_exe %exe%
;     Loop, %id%
;     {
;       this_ID := id%A_Index%
;       If IsWindowOnCurrentVirtualDesktop(this_ID)
;         LastWin := this_ID ; retrieves the bottommost matching window ID
;     }
;     WinActivate, ahk_id %LastWin%
;   }

;   If (LastWin) {
;     Return
;   }

;   If (path) {
;     Run, %path%
;   } else {
;     Run, %exe%
;   }
; }

; ; https://autohotkey.com/boards/viewtopic.php?p=64295#p64295
; ; Indicates whether the provided window is on the currently active virtual desktop:

; IsWindowOnCurrentVirtualDesktop(hWnd) {
;   hyper := 0
;     onCurrentDesktop := ""
;     CLSID := "{aa509086-5ca9-4c25-8f95-589d3c07b48a}"
;     IID := "{a5cd92ff-29be-454c-8d04-d82879fb3f1b}"
;     IVirtualDesktopManager := ComObjCreate(CLSID, IID)
;     Error := DllCall(NumGet(NumGet(IVirtualDesktopManager+0), 3*A_PtrSize), "Ptr", IVirtualDesktopManager, "Ptr", hWnd, "IntP", onCurrentDesktop)
;     ObjRelease(IVirtualDesktopManager)
;     if !(Error=0)
;         return false, ErrorLevel := true
;     return onCurrentDesktop, ErrorLevel := false
; }

; ActivateOrDeactivateExe(exe, path=False) {
;   hyper := 0
;   If WinExist("ahk_exe " . exe) {
;     If WinActive("ahk_exe " . exe) {
;         Send, !{tab}
;         ;WinActivateBottom, "ahk_exe " . exe
;         ;AltTab
;     } else {
;       WinActivate ahk_exe %exe%
;     }
;   } else {
;     If (path) {
;       ;Run, %path%
;     } else {
;       ;Run, %exe%
;     }
;   }
; }
