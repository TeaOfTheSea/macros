#Requires AutoHotkey v2.0

;Many of these macros were taken from https://drive.google.com/drive/folders/1TNI3QTqS4Dvvbk5D0_htvVFTzN1xSyKm
;Which I found here https://www.reddit.com/r/lethalcompany/comments/18apu4w/macros_for_lethal_company/?rdt=63733

SetWorkingDir "C:\Users\Monkey\Documents\AutoHotkey\LethalConfigs"

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
^Backspace::{
	Loop 10 {
		Send("{Backspace}")
	}
}

Ping := false
Flash := false
Disable := false
Paused := true
PingContent := ""
FlashContent := ""

#HotIf WinActive("Lethal Company")
^z::{
	global
	Ping:= !Ping
}

#HotIf WinActive("Lethal Company")
^x::{
	global
	Flash:= !Flash
}

#HotIf WinActive("Lethal Company")
^f::{
	global
	Disable:= !Disable
}

#HotIf WinActive("Lethal Company")
^l::{
	global
	Paused:= !Paused
}

#HotIf WinActive("Lethal Company")
^p::Send ("ping " A_Clipboard)

#HotIf WinActive("Lethal Company")
^o::Send ("flash " A_Clipboard)

DisableContent := ""

#HotIf WinActive("Lethal Company")
Loop{
	if (Paused) {
		; Check and read files if the variables are set to true
		PingOrFlash := false

		if (Ping) {
			;PingContent := FileRead("Ping.txt")
			;PingContent := global PingContent
			PingOrFlash := true
			TypeContent(PingContent)
		} else {
			PingContent := ""
		}

		if (Flash) {
			;FlashContent := FileRead("Flash.txt")
			;FlashContent := global FlashContent
			PingOrFlash := true
			TypeContent(FlashContent)
		} else {
			FlashContent := ""
		}

		if (PingOrFlash) {
			RadarContent := FileRead("Radar.txt")
			PingContent := "ping " StrReplace(RadarContent, "`n", "`nping ") ; add "ping " at the beginning of each line
			FlashContent := "flash " StrReplace(RadarContent, "`n", "`nflash ")
		}

		if (Disable) {
			DisableContent := FileRead("Disable.txt")
			TypeContent(DisableContent)
		} else {
			DisableContent := ""
		}
	}

    Sleep 10 ; Sleep for 5 seconds before checking again
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

#HotIf WinActive("Lethal Company")
^r::{
	SetKeyDelay 15, 15
	Codes := "b3c1c2c7d6f2h5i1j6k9l0m6m9o5p1r2r4t2u2u9v0x8y9z3"
	CurrentCode := 1
	While(CurrentCode < StrLen(Codes)){
		Send(SubStr(Codes, CurrentCode, 2) . "{Enter}")
		Sleep 25
		CurrentCode := CurrentCode + 2
	}
}