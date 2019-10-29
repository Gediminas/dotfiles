; Number Layer

#If (GetKeyState("RAlt","P"))
  ;1::Send {:}
  ;2::Send {€}
  ;3::Send {#}
  ;4::Send {$}
  ;5::Send {`%}
  ;6::Send {^}

  q::Send {+}
  w::Send {Blind}{9}
  e::Send {Blind}{8}
  r::Send {Blind}{7}
  t::Send {*}
  y::Send {:}

  a::Send {Blind}{-}
  s::Send {Blind}{3}
  d::Send {Blind}{2}
  f::Send {Blind}{1}
  g::Send {Blind}{/}

  z::Send {Blind}{6}
  x::Send {Blind}{5}
  c::Send {Blind}{4}
  v::Send {Blind}{0}

  ;+d::Send {(}
  ;+f::Send {)}
  ;+g::Send {`%}

  LCtrl::Send {Blind}{=}
  LShift::Send {Blind}{.}

  h::Send {Blind}{Left}
  j::Send {Blind}{Down}
  k::Send {Blind}{Up}
  l::Send {Blind}{Right}

  b::Send {Enter} 
  n::Send {Esc} 
  m::Send {Backspace} 

#If True
  *RAlt::return
#If

