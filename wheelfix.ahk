wheelup::
hotkey wheeldown,wheelup
send {wheelup}
SetTimer, Tick, 200
return

wheeldown::
hotkey wheelup,wheeldown
send {wheeldown}
SetTimer, Tick, 200
return

Tick()
{
	hotkey wheelup,wheelup
	hotkey wheeldown,wheeldown
}