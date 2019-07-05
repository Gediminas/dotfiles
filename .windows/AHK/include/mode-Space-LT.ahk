; Space + [1..9,0,-,=] => Lithuanian letters

. & a::Send {Blind}ą
. & c::Send {Blind}č
. & e::Send {Blind}ę
. & d::Send {Blind}ė
. & r::Send {Blind}į
. & s::Send {Blind}š
. & v::Send {Blind}ų
. & f::Send {Blind}ū
. & q::Send {Blind}„
. & w::Send {Blind}“
. & `::Send {Blind}–
. & z::Send {Blind}ž
. & t::Return
. & g::Return
. & x::Return

/ & a::Send {Blind}Ą
/ & c::Send {Blind}Č
/ & e::Send {Blind}Ę
/ & d::Send {Blind}Ė
/ & r::Send {Blind}Į
/ & s::Send {Blind}Š
/ & v::Send {Blind}Ų
/ & f::Send {Blind}Ū
/ & q::Send „“{Left}
/ & w::Send „“{Left}
/ & `::Send {Blind}–
/ & z::Send {Blind}Ž
/ & t::Return
/ & g::Return
/ & x::Return


  , & q::Send |
  , & w::Send ?
  , & e::Send [
  , & r::Send ]
  , & t::Send ``

  , & a::Send \
  , & s::Send /
  , & d::Send (
  , & f::Send )
  , & g::Send `"

  , & `::Return
  , & z::Send {,}
  , & x::Send {{}
  , & c::Send {}}
  , & v::Send {'}
  , & b::Send {,}

;; #If (GetKeyState("n", "P"))
  ;; , & 4::Send ${{}{}}{Left} 
  ;; , & 5::Send `%`%{Left}

  ;; , & q::Send {,}
  ;; , & w::Send {,}
  ;; , & e::Send []{Left}
  ;; , & r::Send {,}
  ;; , & t::Send ````{Left}

  ;; , & a::Send {,}
  ;; , & s::Send {,}
  ;; , & d::Send (){Left}
  ;; , & f::Send {,}
  ;; , & g::Send `"`"{Left}

  ;; , & `::Return
  ;; , & z::Send {,}
  ;; , & x::Send {{}{}}{Left}
  ;; , & c::Send {,}
  ;; , & v::Send ''{Left}
  ;; , & b::Send {,}

  ;; , & space::Send {Enter}

;; #If