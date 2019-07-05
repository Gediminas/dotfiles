; Punctuation marks

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

; */::Send {Blind}/
/::Send /
?::Send ?


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
