﻿; Hyper Layer*/

; Space & r::Activate("Reader",   "^\[ ahk_exe firefox.exe ahk_class MozillaWindowClass", "RegEx")


`; & a::Activate("A planner", "^\[MX\] ahk_exe firefox.exe ahk_class MozillaWindowClass", "RegEx")
`; & z::Activate("MAIL",      "Thunderbird ahk_exe thunderbird.exe ahk_class MozillaWindowClass", "RegEx")

`; & e::Activate("Emacs",    "ahk_exe emacs.exe ahk_class Emacs", 3)
`; & d::Activate("Emacs",    "ahk_exe emacs.exe ahk_class Emacs", 3)
`; & x::Activate("DevEnv",   "ahk_exe devenv.exe ahk_class ^HwndWrapper", "RegEx")

`; & v::Activate("ViewRes",  "^\[DEV\] ahk_exe firefox.exe ahk_class MozillaWindowClass", "RegEx")

`; & c::Activate("Cmd",      "ahk_exe cmd.exe ahk_class ConsoleWindowClass", 3)

`; & f::Activate("Dev",     "^!Y ahk_exe chrome.exe ahk_class Chrome_WidgetWin_1", "RegEx")
`; & m::Activate("Youtube", "^YouTube ahk_exe chrome.exe ahk_class Chrome_WidgetWin_1", "RegEx")
`; & n::Activate("Notes",   "ahk_exe ResophNotes.exe", 3)

; `; & a::Activate("resophnotes.exe", "")
; `; & z::Activate("thunderbird.exe", "MozillaWindowClass")
; `; & e::Activate("emacs.exe", "Emacs")
; `; & x::Activate("devenv.exe", "")
; `; & c::Activate("cmd.exe", "")

`; & g::{
    exe   := WinGetProcessName("A")
    clss  := WinGetClass("A")
    title := WinGetTitle("A")
    ToolTip ("exe: " exe ", Class: " Clss ", Title: " title), 0, 0
    SetTimer () => ToolTip(), -5000
    Return
}


$*`;::Send("{Blind}`;")

global prev_id := ""

Activate(friendly, title, match) {
    SetTitleMatchMode match
    if not WinExist(title) {
        ToolTip friendly . " not lauched", 0, 0
        SetTimer () => ToolTip(), -1000
        Return
    }

    if WinActive() {
        WinActivate("ahk_id " . prev_id)
        prev_id := ""
        Return
    }

    try {
        prev_id := WinGetID("A")
        WinActivate(title)
        ToolTip "Switched to " . friendly, 0, 0
    } catch e {
        ToolTip "Error opening " . friendly . ": " . e.What , 0, 0
    }
    SetTimer () => ToolTip(), -1000
}


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
