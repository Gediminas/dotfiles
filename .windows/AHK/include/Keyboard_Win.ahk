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
#y::^y
#z::^z

;; Cut/Copy/Paste
#x::^x
#c::^c
#v::^v

;; Disable Narrator
#u::return

;; Disable Win key behavior of popping up the Start Menu, but still allow Win+‹key› combination.
LWin Up::Return 
RWin Up::Return 
