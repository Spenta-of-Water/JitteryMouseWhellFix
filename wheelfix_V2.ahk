; Mouse Wheel Jitter Fix: Suppress Fast Reversals
; Ignores wheel reversals that happen too quickly after a scroll in the opposite direction.

#NoEnv
#SingleInstance force
SendMode Input

lastDirection := ""
lastTime := 0
reversalSuppression := 150 ; ms

WheelUp::
now := A_TickCount
if (lastDirection = "down" && (now - lastTime < reversalSuppression)) {
    ; Ignore false reversal
    returns
}
Send {WheelUp}
lastDirection := "up"
lastTime := now
return

WheelDown::
now := A_TickCount
if (lastDirection = "up" && (now - lastTime < reversalSuppression)) {
    ; Ignore false reversal
    return
}
Send {WheelDown}
lastDirection := "down"
lastTime := now
return
