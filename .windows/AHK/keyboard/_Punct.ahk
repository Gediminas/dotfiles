; Punctuation marks

#If (GetKeyState("RAlt","P"))
  e::Send [
  r::Send ]
  d::Send (
  f::Send )
  x::Send {{}
  c::Send {}}
  space::Send {Enter} 
#If

;, & q::Send |
;, & w::Send ?
;, & t::Send ``
;, & a::Send \
;, & s::Send /
;, & g::Send `"
;, & `::Return
;, & z::Send {,}
;, & v::Send {'}
;, & b::Send {,}
;; #If (GetKeyState("n", "P"))
;; , & 4::Send ${{}{}}{Left} 
;; , & 5::Send `%`%{Left}
;; , & e::Send []{Left}
;; , & t::Send ````{Left}
;; , & d::Send (){Left}
;; , & g::Send `"`"{Left}
;; , & x::Send {{}{}}{Left}
;; , & v::Send ''{Left}
;; #If
