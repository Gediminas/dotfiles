; Apple Magic Keyboard on Windows 10

;BS := new BrightnessSetter()
;Space & F1:: BS.SetBrightness(10)
;Space & F2:: BS.SetBrightness(-10)

Space & F3:: SendInput, #{Tab}
Space & F4:: SendInput, {LWin}

Space & F5:: 
  SendInput, +^s
  Reload
  Return

Space & F7:: SendInput {Media_Prev}
Space & F8:: SendInput {Media_Play_Pause}
Space & F9:: SendInput {Media_Next}
Space & F10::SendInput {Volume_Mute}
Space & F11::SendInput {Volume_Down}
Space & F12::SendInput {Volume_Up}

; $*Space::SendInput {Blind}{Space} 
