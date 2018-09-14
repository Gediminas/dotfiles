; Space + [1..9,0,-,=] => Lithuanian letters

#If GetKeyState("Shift", "P")
Space & 1::SendInput, {Blind}Ą
Space & 2::SendInput, {Blind}Č
Space & 3::SendInput, {Blind}Ę
Space & 4::SendInput, {Blind}Ė
Space & 5::SendInput, {Blind}Į
Space & 6::SendInput, {Blind}Š
Space & 7::SendInput, {Blind}Ų
Space & 8::SendInput, {Blind}Ū
Space & 9::SendInput, {Blind}„
Space & 0::SendInput, {Blind}“
Space & -::SendInput, {Blind}–
Space & =::SendInput, {Blind}Ž
#If
Space & 1::SendInput, {Blind}ą
Space & 2::SendInput, {Blind}č
Space & 3::SendInput, {Blind}ę
Space & 4::SendInput, {Blind}ė
Space & 5::SendInput, {Blind}į
Space & 6::SendInput, {Blind}š
Space & 7::SendInput, {Blind}ų
Space & 8::SendInput, {Blind}ū
Space & 9::SendInput, {Blind}„
Space & 0::SendInput, {Blind}“
Space & -::SendInput, {Blind}–
Space & =::SendInput, {Blind}ž

; $*Space::SendInput {Blind}{Space} 
