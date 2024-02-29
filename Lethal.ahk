#Requires AutoHotkey v2.0

;Many of these macros were taken from https://drive.google.com/drive/folders/1TNI3QTqS4Dvvbk5D0_htvVFTzN1xSyKm
;Which I found here https://www.reddit.com/r/lethalcompany/comments/18apu4w/macros_for_lethal_company/?rdt=63733

SetWorkingDir "C:\Users\Monkey\Documents\AutoHotkey\LethalConfigs"

PingContent := ""
FlashContent := ""
DisableContent := ""
ShutdownSleep := 1700

#HotIf WinActive("ahk_class Notepad++")
$^s::{
	global
	Send "^s"
	Sleep 200
	RadarContent := FileRead("Radar.txt")
	PingContent := "ping " StrReplace(RadarContent, "`n", "`nping ") ; add "ping " at the beginning of each line
	FlashContent := "flash " StrReplace(RadarContent, "`n", "`nflash ")
	DisableContent := FileRead("Disable.txt")
}

#HotIf WinActive("Lethal Company")
^q::{
	Send("view monitor{Enter}")
}

#HotIf WinActive("Lethal Company")
^e::{
	Send("switch{Enter}")
}

#HotIf WinActive("Lethal Company")
^t::{
	Send("transmit ")
}

#HotIf WinActive("Lethal Company")
^f::{
	Send("scan{Enter}")
}

#HotIf WinActive("Lethal Company")
^Backspace::{
	Loop 10 {
		Send("{Backspace}")
	}
}

#HotIf WinActive("Lethal Company")
^l::{
	while GetKeyState("l", "P"){
		TypeContent(PingContent)
		Sleep 25
	}
}

#HotIf WinActive("Lethal Company")
^k::{
	while GetKeyState("k", "P"){
		TypeContent(FlashContent)
		Sleep 25
	}
}

#HotIf WinActive("Lethal Company")
^j::{
	while GetKeyState("j", "P"){
		TypeContent(DisableContent)
		Sleep ShutdownSleep
	}
}

#HotIf WinActive("Lethal Company")
^p::{
	Send ("ping " A_Clipboard "{Enter}")
}

#HotIf WinActive("Lethal Company")
^o::{
	Send ("flash " A_Clipboard "{Enter}")
}

#HotIf WinActive("Lethal Company")
^r::{
	global
	while GetKeyState("r", "P"){
		SetKeyDelay 15, 15
		Codes := "b3c1c2c7d6f2h5i1j6k9l0m6m9o5p1r2r4t2u2u9v0x8y9z3"
		CurrentCode := 1
		While(CurrentCode < StrLen(Codes)){
			Send(SubStr(Codes, CurrentCode, 2) . "{Enter}")
			Sleep 25
			CurrentCode := CurrentCode + 2
		}
		Sleep ShutdownSleep
	}
}

TypeContent(content) {
    ; Type out the contents with delays
    Loop Parse content
    {
        Send A_LoopField
        Sleep 15 ; Delay between characters
    }
    Send "{Enter}"
}
