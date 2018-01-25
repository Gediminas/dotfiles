;AHK script implementing hjkl navigation like TouchCursor 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; MAC key bindings

;; Windows navigation
LWin & Tab::AltTab
RWin & Tab::ShiftAltTab
;Space & RShift::#Tab;


;; Select All
#a::^a

;; Undo / Redo
#y::SendInput ^y
#z::SendInput ^z

;; Cut/Copy/Paste
#x::SendInput ^x
#c::SendInput ^c
#v::SendInput ^v

;; Disable Narrator
#u::return

;; Disable Win key behavior of popping up the Start Menu, but still allow Win+‹key› combination.
LWin Up::Return 
RWin Up::Return 
