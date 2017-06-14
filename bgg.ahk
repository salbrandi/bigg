#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
#SingleInstance Force

*f3::
toggle := !toggle
	if (toggle) {
		SetTimer Spam_Q, 3000
	} else {
		SetTimer Spam_Q, Off
	}
  return



Spam_Q:
	wintitle = Brawlhalla
  IfWinExist %wintitle%:
		ControlSend, , {c}, %wintitle%
		ControlSend, , {c}, %wintitle%
		ControlSend, , {c}, %wintitle%
		Sleep 200
		ControlSend, , {left down}, %wintitle%
		Sleep 500
		ControlSend, , {l}, %wintitle%
		Sleep 600
		ControlSend, , {left up}, %wintitle%
		ControlSend, , {space}, %wintitle%
		ControlSend, , {l}, %wintitle%
		Sleep 200
		ControlSend, , {c}, %wintitle%
		ControlSend, , {c}, %wintitle%
		ControlSend, , {c}, %wintitle%
		Sleep 200
	  ControlSend, , {right down}, %wintitle%
		Sleep 500
		ControlSend, , {l}, %wintitle%
		Sleep 600
		ControlSend, , {right up}, %wintitle%
		ControlSend, , {space}, %wintitle%
		ControlSend, , {l}, %wintitle%
		Sleep 200

	return
