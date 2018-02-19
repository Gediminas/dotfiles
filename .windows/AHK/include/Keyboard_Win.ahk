;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; MAC key bindings on Windows
;;; (Apple Magic Keyboard OR RDC)

;; Cut/Copy/Paste
#x::SendInput {Blind}^x
#c::SendInput {Blind}^c
#v::SendInput {Blind}^v

;; Undo / Redo
#y::SendInput {Blind}^y
#z::SendInput {Blind}^z

;; Select All
#a::SendInput {Blind}^a

;; Save
#s::^s
+#s::+^s
!#s::!^s
+!#s::+!^s

;; Find
#f::^f
+#f::+^f
!#f::!^f
+!#f::+!^f

;; Minimize windows
#m::WinMinimize,a

;; Tab New/Close
#t::SendInput {Blind}^t
#w::SendInput {Blind}^w

;; Open
#o::SendInput ^o

;; Close windows (cmd+q to Alt+F4)
#q::Send !{F4}

;; Disable
#u::return

;; Windows navigation
LWin & j::ShiftAltTab
LWin & k::AltTab

;; Disable Win key behavior of popping up the Start Menu, but still allow Win+‹key› combination.
;LWin Up::Return 
;RWin Up::Return 


; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

!g::SendInput,©
!o::SendInput,ø
!e::SendInput,€
!+::SendInput,±
!r::SendInput,®
!w::SendInput,∑

