; Space + [1..9,0,-,=] => Lithuanian letters

n & m::   
m & n::    
  return

#If GetKeyState("n", "P")
  m & 1::Send {Blind}Ą
  m & 2::Send {Blind}Č
  m & 3::Send {Blind}Ę
  m & 4::Send {Blind}Ė
  m & 5::Send {Blind}Į
  m & 6::Send {Blind}Š
  c & 7::Send {Blind}Ų
  c & 8::Send {Blind}Ū
  c & 9::Send {Blind}„
  c & 0::Send {Blind}“
  c & -::Send {Blind}–
  c & =::Send {Blind}Ž
#If

m & 1::Send {Blind}ą
m & 2::Send {Blind}č
m & 3::Send {Blind}ę
m & 4::Send {Blind}ė
m & 5::Send {Blind}į
m & 6::Send {Blind}š
c & 7::Send {Blind}ų
c & 8::Send {Blind}ū
c & 9::Send {Blind}„
c & 0::Send {Blind}“
c & -::Send {Blind}–
c & =::Send {Blind}ž

