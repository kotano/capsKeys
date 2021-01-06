SetCapsLockState AlwaysOff

; Basic movement
CapsLock & j::Send {blind}{Left}
CapsLock & l::Send {blind}{Right}
CapsLock & i::Send {blind}{Up}
CapsLock & k::Send {blind}{Down}

; Fast move
CapsLock & u::Send {blind}{Up 5}
CapsLock & n::Send {blind}{Down 5}

; Fast delete
CapsLock & Backspace::Send {blind}{Backspace 5}
CapsLock & Delete::Send {blind}{Delete 5}

; Delete words
CapsLock & w::Send {blind}^{Backspace}
CapsLock & e::Send {blind}^{Delete}

; Go back or forward.
CapsLock & ,::Send {blind}!{Left}
CapsLock & .::Send {blind}!{Right}
; with mouse wheel
CapsLock & WheelDown::Send {blind}!{Left}
CapsLock & WheelUp::Send {blind}!{Right}

; Call context menu
CapsLock & p::Send {AppsKey}

; Emulate PgUp, PgDn, Home, End buttons.
CapsLock & h::Send {blind}{Home}
CapsLock & SC027::Send {blind}{End}
CapsLock & y::Send {blind}{PgUp}
CapsLock & b::Send {blind}{PgDn}

; Jump left or right on.
CapsLock & Space::Send {blind}^{Right}
CapsLock & LAlt::Send {blind}^{Left}

; Copy, crop and paste. For convenience
CapsLock & c::Send {blind}^c
CapsLock & x::Send {blind}^x
CapsLock & v::Send {blind}^v

; Delete everything before or after the cursor
CapsLock & q::Send {blind}+{Home}{Delete}
CapsLock & r::Send {blind}+{End}{Delete}

; Select word around cursor
CapsLock & s::Send {blind}^{Left}^+{Right}

; Copy line and add below
CapsLock & a::Send {blind}{End}+{Home}^c{End}{Enter}^v

; Copy and delete line
CapsLock & d::
Send {blind}{End}
Send {blind}+{Home}+{Home}
Send {blind}^c{Backspace}
return
