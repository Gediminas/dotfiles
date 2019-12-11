; cod Layer
; SC034 = .

SC034 & SC010::Send {`}             ;q
SC034 & SC011::Send {:}             ;w
SC034 & SC012::Send {[}             ;e
SC034 & SC013::Send {]}             ;r
SC034 & SC014::Send {"}             ;t
SC034 & SC015::return               ;y
SC034 & SC016::Send {Blind}{Home}   ;u
SC034 & SC017::Send {Blind}{Up}     ;i
SC034 & SC018::Send {Blind}{End}    ;o
SC034 & SC019::return               ;p

SC034 & SC01A::return               ;[
SC034 & SC01B::return               ;]
SC034 & SC02B::return               ;!

SC034 & SC01E::Send {-}             ;a
SC034 & SC01F::Send {_}             ;s
SC034 & SC020::Send {(}             ;d
SC034 & SC021::Send {)}             ;f
SC034 & SC022::Send {;}             ;g
SC034 & SC023::return               ;h
SC034 & SC024::Send {Blind}{Left}   ;j
SC034 & SC025::Send {Blind}{Down}   ;k
SC034 & SC026::Send {Blind}{Right}  ;l
SC034 & SC027::return               ;;
SC034 & SC028::return               ;'

SC034 & SC02C::Send {|}             ;z
SC034 & SC02D::Send {&}             ;x
SC034 & SC02E::Send {{}             ;c
SC034 & SC02F::Send {}}             ;v
SC034 & SC030::Send {Enter}         ;b
SC034 & SC031::return               ;n
SC034 & SC032::Send {Backspace}     ;m 
SC034 & SC033::return               ;,
SC034 & SC035::return               ;/

SC034 & SC02A::Send {.}             ;LShift
SC034 & SC03A::Send {=}             ;CapsLock

$*SC034::Send {Blind}{.}
