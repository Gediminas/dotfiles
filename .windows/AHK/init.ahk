;Create shortcut to this file under: C:\Users\<YOURUSERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

#SingleInstance force
#Persistent
; #NoEnv         ; performance and compatibility with future AutoHotkey releases.
; SendMode Input ; superior speed and reliability.
; SetKeyDelay, -1, -1, -1


;; ; https://github.com/ahkscript/awesome-AutoHotkey
;; ; https://autohotkey.com/docs/KeyList.htm

;;RAlt::RShift
;;RShift::RAlt

; #Include LockScreen.ahk

#Include keyboard\Workarounds.ahk


;; Training mode
;f1::Ff1
;f2::Ff2
;f3::Ff3
;f4::Ff4
;f5::Ff5
;f6::Ff6
;f7::Ff7
;f8::Ff8
;f9::Ff9
;f10::Ff10
;f11::Ff11
;f12::Ff12

;1::f1
;2::f2
;3::f3
;4::f4
;5::f5
;6::f6
;7::f7
;8::f8
;9::f9
;0::f10
;-::f11
;=::f12

SC056::LShift ;\ nm apple magic

;SC029::f13 ;` mx apple magic
;SC056::f13 ;\ nm apple magic
;SC001::return ;esc
;SC00E::return ;backspace
;SC01A::return ;[
;SC01B::return ;]
;SC028::return ;'  
;SC02B::Enter  ;\

; #Include keyboard\CLock.ahk
#Include keyboard\Space.ahk
#Include keyboard\Ltu.ahk
; #Include keyboard\Num.ahk
#Include keyboard\Sym.ahk
#Include keyboard\Cod.ahk

;#Include keyboard\RAlt.ahk
;#Include keyboard\Snp.ahk
;#Include keyboard\Tab.ahk
;#Include keyboard\WinMng.ahk
;#Include keyboard\app_MsDev.ahk
;; #Include keyboard\Lt.ahk
;; #Include keyboard\Punct.ahk
;; #Include keyboard\Hyper.ahk

Capslock::Esc
F15::RShift

;LCtrl & Tab::AltTab

; RButton & WheelUp::Send ^#{Left}
; RButton & WheelDown::Send ^#{Right}
; RButton::Send {RButton}

\ & q::{
  If WinActive("ahk_exe emacs.exe") {
    SendInput "{Esc}:w{Enter}"
  } Else If WinActive("ahk_exe emacsclient.exe") {
    SendInput "{Esc}:w{Enter}"
  } Else If WinActive("ahk_exe putty_tray_64.exe") {
    SendInput "{Esc}:w{Enter}"
  } Else {
    SendInput "{Blind}^s"
  }
  Reload
  Return
}
$*\::Send "{Blind}\"

  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; # Win (Windows logo key)
;; ! Alt
;; ^ Control
;; + Shift
;; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
