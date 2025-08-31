#Requires AutoHotkey v2.0

; --- Настройка клавиш ---
global FastOffOnKey := "F3" ; Замените на любую клавишу которую хотите использовать для быстрого включения/выключения
global MoveKey := "F1" ; Замените на любую клавишу которую хотите использовать для показа/скрытия верхней панели и кнопок окна
global MessegesKey := "F7" ; Замените на любую клавишу которую хотите использовать для отправки шаблонных сообщений
global HideToggleKey := "F6" ; Замените на любую клавишу которую хотите использовать для показа/скрытия панели

; --- Переменные ---
global Zone := "A"
global HeadCode := ""
global Tixt := ""
global Station := ""
global Moving := true
global isGuiVisible := false
global Working := false

; --- Масивы ---
Stationlist := Map(
	"A", ["Beechley", "CH", "FQ", "SC", "SV", "SE", "UFC", "Willowfield", "Whitefield", "WF L", "WH L"],
	"B", ["Angel Pass", "Bodin", "Coxly", "CN", "EJ", "SHB", "Barton", "Berrily"],
	"C", ["BB", "AP", "AC", "AW", "T1", "T2", "T3"],
	"D", ["Morganstown", "HH", "RP", "LSR", "LC", "LW"],
	"E", ["L-b-t-S", "Northshore", "Westwyvern", "Millcastle", "Faymere", "Edgemead"],
	"F", ["Benton", "PB", "Connolly", "CSP", "Greenslade", "Newry", "NH", "EQ", "FR"],
	"G", ["Farleigh", "Esterfield"],
	"H", ["RB", "CB"],
	"J", ["SC (Metro)", "SE (Metro)", "HS", "FW"]
)

; --- GUI ---
myGui := Gui("+AlwaysOnTop -SysMenu -Caption", "SCR")
WinSetTransparent(230, myGui)
myGui.BackColor := 0x000000
myGui.Icon := "C:\Users\Wlad\Downloads\Ahk\Icons\SCR.ico"
myGui.SetFont("s14 w700", "Tahoma")
myGui.opt("+SysMenu +Caption")

; --- Зона ---
global Text1 := myGui.Add("Text", "cffffff y15", "Зона")
global ZoneList := myGui.Add("ComboBox", "w70 y15 r9 Choose1 Limit1 Uppercase", ["A", "G", "H", "J"])
ZoneList.OnEvent("Change", ZoneUpdate)

; --- Текст ---
myGui.Add("Text", "cFFFFFF x15", "Текст")
global TextList := myGui.Add("dropdownList", "w350 r3", ["Zone # on manual control!", "Zone # on automatic control!", "[ST DS] please dispatch HC!"])
TextList.OnEvent("Change", TextUpdate)

; --- Станция ---
myGui.Add("Text", "cFFFFFF", "Станция")
global StationBox := myGui.Add("ComboBox", "w350 r5")
StationBox.OnEvent("Change", StationUpdate)
ZoneUpdate


; --- ГоловнойКод ---
myGui.Add("Text", "cFFFFFF x180 y17", "HeadCode")
global Code := myGui.Add("Edit", "Limit4 Uppercase w80 x285 y15 r1")
Code.OnEvent("Change", CodeUpdate)



; --- Функции ---

ZoneUpdate(*) {
	global Zone, ZoneList
	Zone := ZoneList.Text
	StationUpdate
}

CodeUpdate(*) {
	global HeadCode, Code
	HeadCode := Code.Text
}

TextUpdate(*) {
	global Tixt, TextList
	Tixt := TextList.Text
}


StationUpdate(*) {
	global StationBox, StationList, Station, Zone

	StationBox.Delete
	StationBox.Add(Stationlist[Zone])
	StationBox.Text := Station
}

Clicker(*) {
    Click "left"
}

Print(ctrl) {
	SendInput("{/}")
	Sleep 100
	SendInput(ctrl)
	Sleep 100
	SendInput("{Enter}")
}

RED(x, y) {
	MouseMove(x+1, y+1)
	MouseMove(x, y)
	MouseMove(x-1, y-1)
	Sleep(50)
	Send("1")
}

Main() {
	global Zone

	try {
		if WinGetTitle(WinExist("A")) = "Roblox" {
			if (Zone = "A") {
				Send("V")
				Sleep(150)
				Loop 2
					Send("^{-}")
				Sleep(150)
				SetTimer Clicker, 1
				RED(559, 981)
				Sleep(100)
				RED(529, 980)
				Sleep(100)
				RED(499, 980)
				Sleep(100)
				RED(469, 980)
				Sleep(100)
				RED(439, 980)
				Sleep(100)
				RED(409, 980)
				Sleep(100)
				RED(773, 747)
				Sleep(100)
				RED(1224, 728)
				Sleep(100)
				RED(773, 717)
				Sleep(100)
				RED(773, 687)
				Sleep(100)
				RED(1263, 656)
				Sleep(100)
				RED(773, 657)
				Sleep(100)
				RED(619, 666)
				Sleep(100)
				RED(674, 638)
				Sleep(100)
				RED(480, 637)
				Sleep(100)
				RED(501, 618)
				Sleep(100)
				RED(480, 595)
				Sleep(100)
				RED(1099, 579)
				Sleep(100)
				RED(1003, 566)
				Sleep(100)
				RED(773, 567)
				Sleep(100)
				RED(1118, 537)
				Sleep(100)
				RED(773, 537)
				Sleep(100)
				RED(773, 507)
				Sleep(100)
				RED(1003, 477)
				Sleep(100)
				RED(1263, 477)
				Sleep(100)
				RED(510, 481)
				Sleep(100)
				RED(540, 481)
				Sleep(100)
				RED(773, 477)
				Sleep(100)
				RED(773, 447)
				Sleep(100)
				RED(1263, 447)
				Sleep(100)
				RED(1199, 436)
				Sleep(100)
				RED(1063, 429)
				Sleep(100)
				RED(1469, 428)
				Sleep(100)
				RED(391, 424)
				Sleep(100)
				RED(421, 424)
				Sleep(100)
				RED(773, 417)
				Sleep(100)
				RED(773, 387)
				Sleep(100)
				RED(773, 357)
				Sleep(100)
				RED(773, 327)
				Sleep(100)
				RED(773, 297)
				Sleep(100)
				RED(1516, 283)
				Sleep(100)
				RED(1546, 283)
				Sleep(100)
				RED(499, 911)
				Sleep(100)
				RED(439, 912)
				Sleep(100)
				Click("WU", 3)
				Sleep(100)
				RED(1466, 327)
				Sleep(100)
				RED(1466, 297)
				Sleep(100)
				RED(1466, 238)
				Sleep(100)
				RED(1332, 309)
				Sleep(100)
				RED(1370, 208)
				Sleep(100)
				RED(945, 208)
				Sleep(100)
				RED(844, 208)
				Sleep(100)
				RED(844, 238)
				Sleep(100)
				RED(844, 268)
				Sleep(100)
				RED(540, 214)
				Sleep(100)
				RED(499, 153)
				Sleep(100)
				RED(511, 74)
				Sleep(100)
				RED(481, 74)
				Sleep(100)
				RED(451, 74)
				SetTimer Clicker, 0
			}

			if (Zone = "G") {
				Sleep(150)
				Send("^{-}")
				Sleep(150)
				Send("V")
				Sleep(150)
				SetTimer(Clicker, 1)
				RED(1108, 608)
				Sleep(100)
				RED(1026, 583)
				Sleep(100)
				RED(1297, 583)
				Sleep(100)
				RED(1297, 543)
				Sleep(100)
				RED(1297, 503)
				Sleep(100)
				RED(1297, 463)
				Sleep(100)
				RED(305, 401)
				Sleep(100)
				RED(568, 503)
				Sleep(100)
				SetTimer(Clicker, 0)
			}

			if (Zone = "H") {
				Send("V")
				Sleep(150)
				SetTimer Clicker, 1
				RED(840, 230)
				Sleep(100)
				RED(900, 230)
				Sleep(100)
				RED(960, 230)
				Sleep(100)
				RED(960, 457)
				Sleep(100)
				SetTimer Clicker, 0
			}

			if (Zone = "J") {
				Send("^{-}")
				Sleep(150)
				Send("V")
				Sleep(150)
				SetTimer(Clicker, 1)
				RED(1456, 503)
				Sleep(100)
				RED(1275, 617)
				Sleep(100)
				RED(1171, 617)
				Sleep(100)
				RED(1171, 657)
				Sleep(100)
				RED(1222, 561)
				Sleep(100)
				RED(1222, 521)
				Sleep(100)
				RED(419, 515)
				Sleep(100)
				RED(673, 577)
				Sleep(100)
				RED(516, 577)
				Sleep(100)
				RED(516, 617)
				Sleep(100)
				RED(568, 600)
				Sleep(100)
				RED(568, 560)
				Sleep(100)
				SetTimer(Clicker, 0)
			}
		}
	}
}


; --- Сообщение ---
Messeges(*) {
	global Zone, HeadCode, Tixt, Station

	if (Tixt = "Zone # on manual control!") {
		Print("Zone " Zone " on manual control!")
	}

	else if (Tixt = "Zone # on automatic control!") {
		Print("Zone " Zone " on automatic control!")
	}

	else if (Tixt = "[ST DS] please dispatch HC!") {
				Print("[" Station " DS] please dispatch " HeadCode "!")
	}
}

; --- Скрыть/Показать ---
HideToggle(*) {
	global isGuiVisible, myGui
	isGuiVisible := !isGuiVisible
	if isGuiVisible
		myGui.Show()
	else
		myGui.Hide()
}



; --- Быстрое ВЫКЛ/ВКЛ ---
FastOffOn(*) {
	Main()
}

; --- Перетаскивание ---
Move(*) {
	global Moving, myGui
	myGui.GetPos(&X, &Y)
	Moving := !Moving
	if Moving {
		myGui.opt("+SysMenu +Caption")
		myGui.Move( X-10, Y+5, 395, 250)
	} else {
		myGui.opt("-SysMenu -Caption")
		myGui.Move( X+10, Y-5, 380, 215)
	}
}

Hotkey(FastOffOnKey, FastOffOn)
Hotkey(MoveKey, Move)
Hotkey(MessegesKey, Messeges)
Hotkey(HideToggleKey, HideToggle)