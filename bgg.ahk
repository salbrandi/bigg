#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
#SingleInstance Force

;; To do ;;
; Create a function for control set up - cleaner code
; Create a function for beeps - cleaner code
;;;;;;;;;;;


notset = 1
*f3::
if (notset == 1) {
	InputBox, keyc, set up your controls!, Continue key?, , , , , , , , c
	InputBox, keyh, set up your controls!, Heavy attack?, , , , , , , , l
	InputBox, keyj, set up your controls!, Jump key?, , , , , , , , space
	InputBox, keyl, set up your controls!, Move left?, , , , , , , , left
	InputBox, keyr, set up your controls!, Move Right?, , , , , , , , right
	InputBox, keyp, set up your controls!, Pick up?, , , , , , , , right
	notset = 0
	MsgBox, All controls set! Press f4 to reconfigure.
}

IfWinExist Brawlhalla
	toggle := !toggle
		if (toggle) {
			SoundBeep, , 100
			SoundBeep, 750, 100
			SetTimer Spam_Q, 3000
		} else {
			SoundBeep, 750, 100
			SoundBeep, , 100
			SetTimer Spam_Q, Off
		}
return

*f4::
	InputBox, keyc, set up your controls!, Continue key?, , , , , , , , c
	InputBox, keyh, set up your controls!, Heavy attack?, , , , , , , , l
	InputBox, keyj, set up your controls!, Jump key?, , , , , , , , space
	InputBox, keyl, set up your controls!, Move left?, , , , , , , , left
	InputBox, keyr, set up your controls!, Move right?, , , , , , , , right
	InputBox, keyp, set up your controls!, Pick up?, , , , , , , , right
	notset = 0
	MsgBox, All controls set! Press f4 to reconfigure.
return

Spam_Q:
  wintitle = Brawlhalla
  IfWinExist %wintitle%:
	ControlSend, , {%keyc%}, %wintitle%
	ControlSend, , {%keyc%}, %wintitle%
	ControlSend, , {%keyc%}, %wintitle%
	ControlSend, , {%keyp%}, %wintitle%
	Sleep 200
	ControlSend, , {%keyl% down}, %wintitle%
	Sleep 500
	ControlSend, , {%keyh%}, %wintitle%
	Sleep 600
	ControlSend, , {%keyl% up}, %wintitle%
	ControlSend, , {%keyj%}, %wintitle%
	ControlSend, , {%keyh%}, %wintitle%
	Sleep 200
	ControlSend, , {%keyc%}, %wintitle%
	ControlSend, , {%keyc%}, %wintitle%
	ControlSend, , {%keyc%}, %wintitle%
	ControlSend, , {%keyp%}, %wintitle%
	Sleep 200
  	ControlSend, , {%keyr% down}, %wintitle%
	Sleep 500
	ControlSend, , {%keyh%}, %wintitle%
	Sleep 600
	ControlSend, , {%keyr% up}, %wintitle%
	ControlSend, , {%keyj%}, %wintitle%
	ControlSend, , {%keyh%}, %wintitle%
	Sleep 200
  return
