FileCreateDir, %A_AppData%\.wod-scripts
FileCreateDir, %A_AppData%\.wod-scripts\Config
FileCreateDir, %A_AppData%\.wod-scripts\PNGs
F1=%A_AppData%\.wod-scripts\PNGs\makro.png
F2=%A_AppData%\.wod-scripts\PNGs\kopanie.png
F3=%A_AppData%\.wod-scripts\PNGs\clumsy.png
F4=%A_AppData%\.wod-scripts\PNGs\potions.png
F5=%A_AppData%\.wod-scripts\PNGs\zapisz.png
F6=%A_AppData%\.wod-scripts\PNGs\intrukcja.png
F7=%A_AppData%\.wod-scripts\PNGs\configi.png
F8=%A_AppData%\.wod-scripts\PNGs\zaladuj.png


inifile = %A_AppData%\.wod-scripts\Config\config.wod
urldownloadtofile,https://imgur.com/l0heUEY.png,%f1%
urldownloadtofile,https://imgur.com/o0xnZo2.png,%f2%
urldownloadtofile,https://imgur.com/hkEnFjd.png,%f3%
urldownloadtofile,https://imgur.com/53DGDbT.png,%f4%
urldownloadtofile,https://imgur.com/oBkkRPG.png,%f5%
urldownloadtofile,https://imgur.com/uPRm3Rq.png,%f6%
urldownloadtofile,https://imgur.com/CaeJrGP.png,%f7%
urldownloadtofile,https://imgur.com/Zu1biJU.png,%f8%




#SingleInstance

;gui
version= 2.9
name= WOD-Scripts
guicolor= 2b2b3c
;msgboxinfo= Darmowa wersja WOD-Scripts! Jeżeli chciałbyś zakupić pełną wersje, udaj się na nasz discord, lub napisz do mnie na DM!

;font
font1=cWhite s14
font2=cWhite s15
fontdefault=cWhite s12



;clumsy
clumsyadmin= ABY OPCJA Z CLUMSY DZIAŁAŁA, PAMIĘTAJ ABY APLIKACJE URUCHOMIĆ JAKO ADMIN

;kopanie
kopanieinfo= FUNKCJA NIEDŁUGO DOSTĘPNA!

;makro
makroinfo= FUNKCJA NIEDŁUGO DOSTĘPNA!

;dodatki
główneinfoscxhowek= NIEDŁUGO BINDOWANIE ORAZ WYBIERANIE SLOTÓW!












;-------------------------GUI
Gui, Color, 2b2b3c 
Gui, Show, h500 w700, %name% %version%
;MsgBox, %msgboxinfo%
Gui, Font, s13 cWhite, Impact
Gui, Add, Tab3, x0 y0 w697 h500, Makro|Kopanie|Clumsy|Dodatki|Addony|Cfg



;-------------------------MAKRO-LPM
Gui, Tab, Makro
gui, add, picture, gZapisz x658 y455 h30 w30, %f5%
gui, add, picture, gRuby x10 y455 h30 w30, %f5%
gui, add, picture, gSave x97 y455 h30 w30, %f5%
gui, add, picture, x0 y0 h500 w700, %F1%
Gui, Font, %font2%
gui, add, slider, x205 y145 w90 0x8 vmslpm ToolTip Range1-200, 36
Gui, Add, Slider, x466 y145 w90 0x8 vmsppm ToolTip Range1-200, 3
gui, add, slider, x305 y260 w90 0x8 vmsgarda ToolTip Range1-1200, 25



Gui, Add, Hotkey, cBlack x390 y150 w60 h30 vPpm, Numpad7
Gui, Add, Hotkey, cBlack x125 y150 w60 h30 vLpm, Numpad7



Gui, Font, %font2%, Impact 

gui, add, groupbox, x0 y0 w3000 h3000
Gui, Add, Checkbox, vGardowanie x267 y269





















;-------------------------KOPANIE
Gui, Tab, Kopanie

gui, add, picture, gInstrukcjaKomendy x287 y382, %f6%
gui, add, picture, gZapisz x658 y455 h30 w30, %f5%
gui, add, picture, gRuby x10 y455 h30 w30, %f5%
gui, add, picture, gUstawienia633 x80 y220, %f6%
gui, add, picture, gSave x97 y455 h30 w30, %f5%
gui, add, picture, gUstawienia5/3/3 x375 y220, %f6%



gui, add, picture, x0 y0 h500 w700, %f2%



Gui, Font, %font2%, Impact


Gui, Add, Hotkey, vKopanie X110 Y145 w60 h30, Numpad8
Gui, Add, Hotkey, vKopanieOff x240 y145 w60 h30, Numpad9
Gui, Add, Hotkey, vKopanie533 x405 y145 w60 h30, Numpad4
Gui, Add, Hotkey, vKopanie533off x535 y145 w60 h30, Numpad5








;to usun
Gui, Add, Button, x20 y1630 w100 h50, Instrukcja
Gui, Add, Button, x400 y1130 w100 h50, Instrukcja-5/3/3






Gui, Font, %font2%, Impact 



Gui, Font, s13 cBlack, Impact
gui, add, edit, vKomenda1 w60 h25 y342 x276, Repair
gui, add, edit, vKomenda2 w60 h25 y342 x365, Cx



;---------------------Dodatki
Gui, Tab, Dodatki
Gui, Font, %font2%, Impact 
Gui, Add, Button, x555 y430 w130 h60, Wyłącz
Gui, Add, Text, x15 y50, ZMIANA SETA BIND
Gui, Add, Hotkey, vZmiana w100 h30 x170 y50, Numpad7
Gui, Add, Text, x300 y50, ZMIANA SETA MS
gui, add, slider, x435 y43 0x8 vmsset ToolTip Range1-200, 25
gui, add, text, x15 y100, ŚNIEŻKA
gui, add, hotkey, vSniezka w100 h30 x170 y100, Numpad7
gui, add, slider, x435 y93 0x8 viloscsniezka ToolTip Range1-16, 1
gui, add, text, x300 y100, SNIEZKA ILOSC
gui, add, hotkey, vAltowanie w100 h30 x170 y150, Numpad7
gui, add, text, x15 y150, ALTOWANIE
gui, add, hotkey, vSchowek w100 h30 x170 y200, Numpad7
gui, add, text, x15 y200, SCHOWEK
Gui, Add, Button, x310 y200 w100 h30, Schowek
Gui, Add, text, x15 y350, REPAIR
gui, add, hotkey, vRepair w100 h30 x170 y350, Numpad7
gui, add, text, x15 y400, SPAWN
gui, add, hotkey, vSpawn w100 h30 x170 y400, Numpad7
gui, add, button, x310 y400 w100 h30, Spawn
gui, add, text, x15 y450, HOME
gui, add, hotkey, vBindHome w100 h30 x170 y450, Numpad7

gui, add, text, x15 y250, JEDZENIE KOXA
gui, add, hotkey, vKox w100 h30 x170 y250, Numpad7
gui, add, button,  w100 h30 x310 y250 , Kox-Info
gui, add, hotkey, vafk x170 y300 w100 h30, Numpad7
gui, add, text, x15 y300, ANTY AFK
gui, add, slider, x435 y293 0x8 vafktextms ToolTip Range1-500000, 15000











gui, font, s15 cBlack, Impact
gui, add, edit, vTpaHome x310 y450 w100 h30, HomeTPA

gui, font, s14 cBlack, Impact
gui, add, edit, vantyafk w100 h30 x310 y300, AntyAFK

Gui, Font, %font2%, Impact
Gui, Add, Button, x555 y365 h60 w130, Zapisz










;---------------------ADDONY
Gui, Tab, Addony
Gui, Font, %font2%, Impact
gui, add, text, x15 y50, SPAM BOT
gui, add, hotkey, vSpamBot x170 y50 w100 h30, Numpad7
gui, add, slider, x435 y43 0x8 viloscspam ToolTip Range1-1000, 25
gui, add, text, x15 y100, AUTO-DISCONNECT
gui, add, hotkey, vDisconnect x170 y100 w100 h30, Numpad7
gui, add, button, x310 y100 w100 h30, Log
gui, add, text, x15 y150, WYWALANIE
gui, add, hotkey, vWywalanie x170 y150 w100 h30, Numpad7
gui, add, button, x310 y150 w100 h30, Wywalanie
gui, add, text, x420 y150, BIND ZAMYKANIA
gui, add, hotkey, vZamknijWywalanie x570 y150 w100 h30, Numpad7
gui, add, text, x15 y200, TPA
gui, add, text, x15 y250, TPACCEPT
gui, add, hotkey, vTPA w100 h30 y200 x170, Numpad7
gui, add, hotkey, vTPACCEPTBIND w100 h30 y250 x170, Numpad7
gui, add, button, x450 y250 w100 h30, TPACCEPT 
gui, add, text, x15 y300, WĘDKA
gui, add, hotkey, vWedka w100 h30 y300 x170, Numpad7
gui, add, text, x15 y350, PERŁA
gui, add, hotkey, vPerla w100 h30 y350 x170, Numpad7



gui, font, s14 cBlack, Impact
gui, add, edit, vSpamText x310 y50 w100 h30, SpamTEXT
gui, add, edit, vGraczTPA x310 y200 w100 h30, NickTPA
gui, add, edit, vGraczTPACCEPT x310 y250 w100 h30, NickTPACCEPT
gui, add, edit, vWedkaSlot x310 y300 w100 h30, SlotWędki
gui, add, edit, vMieczSlot x450 y300 w100 h30, SlotMiecza
gui, add, edit, vPerlaSlot x310 y350 w100 h30, SlotPerła




Gui, Font, %font2%, Impact
Gui, Add, Button, x555 y365 h60 w130, Zapisz
Gui, Font, %font2%, Impact 
Gui, Add, Button, x555 y430 w130 h60, Wyłącz







;--------------------PUNCH
;Gui, Tab, Punch
;Gui, Font, s30, Impact
;Gui,Add, Hotkey, x300 y124 w90 h70  vPunch, \
;Gui, Add, Button, x230 y243 h100 w240, Zapisz
;Gui, Font, %font2%, Impact
;Gui, Add, Text, x180 y440, ABY SKRYPT DZIAŁAŁ, ŁUK TRZYMAJ W RĄCZCE!
;Gui, Add, Groupbox, x270 y95 w150 h110, BIND PUNCH
;Gui, Font, %font2%, Impact 
;Gui, Add, Button, x555 y430 w130 h60, Wyłącz


;gui, add, text, x10 y465, Witaj 
;gui, add, text, x+10 c660033, %A_Username% !


;-------------------------CONFIGI
Gui, Tab, Cfg
Gui, Add, Picture, gSave x658 y455 h30 w30, %f5%
gui, add, picture, gRuby x10 y455 h30 w30, %f5%
gui, add, picture,gLoad x185 y157, %f8%
gui, add, picture,gCopy x350 y157, %f8%
gui, add, picture, gSave x97 y455 h30 w30, %f5%
Gui, Add, Picture, x0 y0 w700 h500, %F7%






;-------------------------CLUMSY
Gui, Tab, Clumsy
gui, add, picture, gZapisz x658 y455 h30 w30, %f5%
gui, add, picture, gRuby x10 y455 h30 w30, %f5%
gui, add, picture, gSave x97 y455 h30 w30, %f5%
gui, add, picture, x0 y0 w700 h500, %f3%
gui, add, hotkey, vClumsy x300 y190 w100 h30, Numpad7
Gui, Font, %font2%, Impact
return



	
	
	
	







;-------------------------KOPANIEINSTRUKCJA-USTAWIENIA
ButtonInstrukcja:
{
MsgBox, Instrucja do Kopania! Kopanie jest pod kilof 6/3/3, można również używać pod 5/3/3 lecz nie będzie to tak samo wydajne! Kopanie kopie w lewo i prawo więc ustaw się przy rogu jakiejś ściany, tak aby po twojej lewej stronie znajowało się 5 kratek do kopania! ============= BINDY! START = F6 | STOP = F7!   ======= Gdy naciśnieś F7 nastąpi przeładowanie clickera, więc pamiętaj aby potem na nowo ustawć wszystkie ustawienia! Niedługo kopanie zostanie zastąpione całkowicie nowym, z możliwością kopania w tle! AWARYJNE WYŁĄCZANIE = CTRL + O
}
return

Ustawienia633:
{
MsgBox, Jak należy ustawić sloty, aby kopanie poprawnie działało! Kilof na slot 2 |Czat na przycisk T| Jedzonko na slot 6 oraz 7, zapytasz po co na dwa? Skrypt jest zrobiony tak, że jedzonko je z dwóch slotów, powiedzmy że na jednym się skończy, to je z kolejnego!
}
return


























;-------------------------MACROASSETS

Toggle = 0

#MaxThreadsPerHotkey 2

Lpm:
if(gardowanie = 1)
{
    Toggle := !Toggle
     While Toggle{
        Click
        sleep %mslpm%
        click
        sleep %mslpm%
        click
        sleep %mslpm% 
        click
        sleep %mslpm%
        click
        sleep %mslpm%
        click
        sleep %mslpm%
        click
        sleep %gardams%
        send {rbutton}
     
    }
}
if(gardowanie = 0)
{
    Toggle := !Toggle
     While Toggle{
        Click
        sleep %mslpm%   
}
}
return
return





Ppm: 
    Toggle := !Toggle
     While Toggle{
        Click Right
        sleep %msppm%
    }
return









































;----------------------ZMIANA SETA ASSETS

Zmiana:
{
SendInput {e}
sleep %msset%
Click 782, 585
sleep %msset%
Click 623, 515
sleep %msset%
Click 782, 585
sleep %msset%
Click 723, 583
sleep %msset%
Click 622, 461
sleep %msset%
Click 737, 584
sleep %msset%
Click 622, 461
sleep %msset%
Click 679, 578
sleep %msset%
Click 622,404
sleep %msset%
Click 679, 578
sleep %msset%
Click 623, 580
sleep %msset%
Click 679, 578
}
return


;------------------------PUNCH-ASSETS
;Button12:
;{
;send {RButton down}
;sleep 100
;send {Rbutton up}
;}
;return





Zapisz:
Gui, Submit, nohide
Hotkey, %Lpm%, Lpm
Hotkey, %ppm%, Ppm
Hotkey, %Zmiana%, Zmiana
Hotkey, %Sniezka%, Sniezka
Hotkey, %Altowanie%, altowanie
Hotkey, %Schowek%, Schowek
Hotkey, %Kox%, kox
Hotkey, %afk%, afk
Hotkey, %kopanie%, kopanie
Hotkey, %kopanieoff%, kopanieoff
Hotkey, %repair%, repair
Hotkey, %kopanie533%, kopanie533
Hotkey, %kopanie533off%, kopanie533off
Hotkey, %spawn%, spawn
Hotkey, %BindHome%, bindhome
Hotkey, %SpamBot%, spambot
Hotkey, %Disconnect%, disconnect
Hotkey, %Wywalanie%, wywalanie
Hotkey, %ZamknijWywalanie%, zamknijwywalanie
Hotkey, %TPA%, tpa
Hotkey, %TPACCEPTBIND%, tpacceptbind
Hotkey, %Wedka%, wedka
Hotkey, %Perla%, perla
Hotkey, %Clumsy%, Clumsy
MsgBox, Zapisano!
Return





;------------CLUMSY

Clumsy:
{
ControlClick, Button2, clumsy 0.2
}
return





;-----------------ANTYAFK
afk:
Loop
{
Send {W Down}
sleep 1000
Send {W Up}
sleep 1000
Send {S Down}
sleep 1000
Send {S Up}
sleep 1000
Send %antyafk%
sleep 1000
SendInput {enter}
sleep 300
}
return

;-------------SNIEZKA

Sniezka:
Loop %iloscsniezka%
{
SendInput 8
sleep 100
SendInput {RButton}
sleep 100
SendInput 1
}
return



;---------------KOX
kox:
{
Send 4
Send {RButton Down}
sleep 1600
Send {Rbutton Down}
Send 1
}
return


ButtonKox-Info:
{
MsgBox Koxa na slot 4 | Miecz na slot 1
}
return



;------------------PERLA
perla:
{
send %PerlaSlot%
sleep 100
send {RButton}
sleep 200
send %MieczSlot%
}
return

;---------------ALTOWANIE
altowanie:
BlockInput, On
SendInput {F3}
SendInput {ESC}
sleep 100
MouseMove, 300, 20
click down
BlockInput, Off
loop {
If (GetKeyState("LButton","PÂ­")=0){
SendInput {ESC}
sleep 100
SendInput {F3}
Break
}
}
return




;--------------------------KOPANIE-5/3/3-INFO

ButtonInstrukcja-5/3/3:
{
MsgBox, Kopanie pod kilof 5/3/3, jest one tymczasowo zbugowane, ale działa! Kopie one 2 kratki w lewo i 2 w prawo! Zamykaj pod bindem lub pod CTRL+O
}
return


Ustawienia5/3/3:
{
MsgBox, Kilof na slot 2! Jedzonko na slot 6 oraz 7! Czat pod przycisk T
}
return









;-------------------------GUICLOSE

Return

^O::
{
ExitApp
}
return

GuiClose:
ExitApp


;-----------------------WYŁĄCZ-PRZYCISK

ButtonWyłącz:
{
ExitApp
}
return
;-----------------------KOPANIE-ASSETS


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance Force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
SetKeyDelay, 10, 50




SendKey(key, t:=50){
global okna_minecrafta
WM_KEYDOWN := 0x100
WM_KEYUP := 0x101

if key is not integer
{
StringUpper, key, key
key := ord(key)
}

for index, element in okna_minecrafta
PostMessage, %WM_KEYDOWN%, %key%, , , ahk_id %element%
Sleep %t%

for index, element in okna_minecrafta
PostMessage, %WM_KEYUP%, %key%, 0xC0000000, , ahk_id %element%
Sleep 50
}

MouseHold(){
global okna_minecrafta
WM_LBUTTONDOWN := 0x201
for index, element in okna_minecrafta
PostMessage, %WM_LBUTTONDOWN%, 1, , , ahk_id %element%
}

MouseRelease(){
global okna_minecrafta
WM_LBUTTONUP := 0x202
for index, element in okna_minecrafta
PostMessage, %WM_LBUTTONUP%, 0, , , ahk_id %element%
}

Command(command){
sendKey(0xBF) ; SLASH
Loop, Parse, command
SendKey(A_LoopField)
SendKey(0x0D) ; ENTER
}

kopanie:
WinGet, hWnd, List, Minecraft
okna_minecrafta := Array()
Loop, %hWnd%{
element := hWnd%A_Index%
okna_minecrafta.Push(element)
DllCall("SetForegroundWindow", UInt, element)
}
while 1{
Send 6
sleep 200
Send {RButton Down}
sleep 1600
Send {Rbutton Down}
sleep 200
Send 7
sleep 1000
Send {RButton Down}
sleep 1900
Send {Rbutton Up}
sleep 200
send 2

sleep 400

SendInput {t}
sleep 400
Send {NumpadDiv}
sleep 400
Send %komenda1%
sleep 400
SendInput {enter}
sleep 300


sleep 400


SendInput {t}
sleep 400
Send {NumpadDiv}
sleep 400
Send %komenda2%
sleep 400
SendInput {enter}
sleep 300



sleep 400

SendInput {t}
sleep 400
Send Skrypty Rubyego <3
sleep 400
SendInput {enter}
sleep 300


Loop, 10{
MouseHold()
SendKey("d", 1000)
SendKey("a", 1000)
MouseRelease()
}
Command("cx")
}
return





kopanie533:
WinGet, hWnd, List, Minecraft
okna_minecrafta := Array()
Loop, %hWnd%{
element := hWnd%A_Index%
okna_minecrafta.Push(element)
DllCall("SetForegroundWindow", UInt, element)
}
while 1{
Send 6
sleep 200
Send {RButton Down}
sleep 1600
Send {Rbutton Down}
sleep 200
Send 7
sleep 1000
Send {RButton Down}
sleep 1900
Send {Rbutton Up}
sleep 200
send 2

sleep 400

SendInput {t}
sleep 400
Send {NumpadDiv}
sleep 400
Send repair
sleep 400
SendInput {enter}
sleep 300

sleep 400

SendInput {t}
sleep 400
Send Skrypty Rubyego <3
sleep 400
SendInput {enter}
sleep 300


Loop, 10{
Send {Shift Down}
MouseHold()
SendKey("d", 1000)
SendKey("a", 1000)
MouseRelease()
Send {Shift Up}
}
Command("cx")
}
return









kopanieoff:
{
reload
}

kopanie533off:
{
reload
}

#SingleInstance off






;------------------------SCHOWEK
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance Force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
SetKeyDelay, 10, 50

Schowek:
{
SendInput {t}
sleep 90
Send {NumpadDiv}
sleep 90
send schowek
sleep 150
send {enter}
sleep 150
click %schowekx% %schoweky%
send {esc}
}
return



ButtonSchowek:
{
Sleep 100
KeyWait, LButton, D
MouseGetPos, schowekx, schoweky
}
return





;-----------------------SPAWN


ButtonSpawn:
{
MsgBox, Gdy zbindujesz opcje spawn, skrypt automatycznie wpisze /spawn oraz przytrzyma shifta przez czas teleportacji!
}
return


spawn:
{
Send t
sleep 50
Send {NumpadDiv}
sleep 50
send spawn
sleep 50
send {enter}
sleep 150
Send {Shift Down}
sleep 10500
Send {Shift Up}
}
return

;----------------WĘDKA
wedka:
{
send %wedkaslot%
sleep 50
send {RButton}
sleep 350
send %mieczslot%
}
return

;--------------BINDHOME
bindhome:
{
send t
sleep 50
Send {NumpadDiv}
sleep 50
send home %tpahome%
sleep 50
send {enter}
sleep 50
Send {Shift Down}
sleep 10500
Send {Shift Up}
}
return







;-------------------------REPAIR
repair:
{
send t
sleep 50
Send {NumpadDiv}
sleep 50
send repair
sleep 50
Send {enter}

}
return









;------------------------SPAM
spambot:
Loop %iloscspam%
{
send t
sleep 50
send %SpamText%
sleep 50
send {enter}
sleep 50
}
return





InstrukcjaKomendy:
{
MsgBox, Jeżeli masz zamiar ustawiać komende repair, pamiętaj aby umieścić ją w pierwszej kolumnie! Czyli tak, jak jest fabrycznie!
}
return













disconnect:
{
SendInput {esc}
sleep 190
click %logx% %logy%
}
return



ButtonLog:
{
Sleep 100
KeyWait, LButton, D
MouseGetPos, logx, logy
}
return







;---------------------WYWALANIE


ButtonWywalanie:
{
MsgBox, Aby wszystko działało, wpisz /schowek najedź na np. perłę a nastepnie kliknij w bind. Aby zatrzymać wyrzucanie kliknij binda zamykania
}

wywalanie:
Loop
{
Send {Q} {RButton}
sleep 1
}
return



zamknijwywalanie:
{
ExitApp
}
return











;---------------TPA
tpa:
{
send t  
sleep 50
send {NumpadDiv}
sleep 50
send tpa %GraczTPA%
sleep 150
send {enter}  
}
return


tpacceptbind:
{
send t
sleep 50
send {NumpadDiv}
sleep 50
send tpaccept %GraczTPACCEPT%
sleep 150
send {enter}
}
return
























































































;--------------------------CONFIGI

Save:
IniWrite, %Lpm%, %inifile%, ruby, Lpm
IniWrite, %Sniezka%, %inifile%, ruby, Sniezka
IniWrite, %ppm%, %inifile%, ruby, Ppm
IniWrite, %Zmiana%, %inifile%, ruby, Zmiana
IniWrite, %Altowanie%, %inifile%, ruby, altowanie
IniWrite, %Schowek%, %inifile%, ruby, Schowek
IniWrite, %Kox%, %inifile%, ruby, kox
IniWrite, %afk%, %inifile%, ruby, afk
IniWrite, %kopanie%, %inifile%, ruby, kopanie
IniWrite, %kopanieoff%, %inifile%, ruby, kopanieoff
IniWrite, %repair%, %inifile%, ruby, repair
IniWrite, %kopanie533%, %inifile%, ruby, kopanie533
IniWrite, %kopanie533off%, %inifile%, ruby, kopanie533off
IniWrite, %spawn%, %inifile%, ruby, spawn
IniWrite, %BindHome%, %inifile%, ruby, bindhome
IniWrite, %SpamBot%, %inifile%, ruby, spambot
IniWrite, %Disconnect%, %inifile%, ruby, disconnect
IniWrite, %Wywalanie%, %inifile%, ruby, wywalanie
IniWrite, %ZamknijWywalanie%, %inifile%, ruby, zamknijwywalanie
IniWrite, %TPA%, %inifile%, ruby, tpa
IniWrite, %TPACCEPTBIND%, %inifile%, ruby, tpacceptbind
IniWrite, %Wedka%, %inifile%, ruby, Wedka
IniWrite, %Perla%, %inifile%, ruby, Perla
MsgBox, % "Konfiguracja zostala pomyślnie zapisana!"
return



Load:
IniRead, lpm, %inifile%, ruby, lpm
IniRead, Sniezka, %inifile%, ruby, Sniezka
IniRead, ppm, %inifile%, ruby, Ppm
IniRead, Zmiana, %inifile%, ruby, Zmiana
IniRead, altowanie, %inifile%, ruby, altowanie
IniRead, Schowek, %inifilek%, ruby, Schowek
IniRead, Kox, %inifile%, ruby, Kox 
IniRead, Afk, %inifile%, ruby, afk
IniRead, Kopanie, %inifile%, ruby, kopanie
IniRead, KopanieOff, %inifile%, ruby, kopanieoff
IniRead, Repair, %inifile%, ruby, repair
IniRead, kopanie533, %inifile%, ruby, kopanie533
IniRead, kopanie533off, %inifile%, ruby, kopanie533off
IniRead, spawn, %inifile%, ruby, spawn
IniRead, bindhome, %inifile%, ruby, bindhome
IniRead, spambot, %inifile%, ruby, spambot
IniRead, disconnect, %inifile%, ruby, disconnect
IniRead, wywalanie, %inifile%, ruby, wywalanie
IniRead, zamknijwywalanie, %inifile%, ruby, zamknijwywalanie
IniRead, tpa, %inifile%, ruby, tpa
IniRead, tpacceptbind, %inifile%, ruby, tpacceptbind
IniRead, Wedka, %inifile%, ruby, Wedka
IniRead, Perla, %inifile%, ruby, Perla

Guicontrol, Text, Sniezka, %Sniezka%
Guicontrol, Text, Lpm, %Lpm%
Guicontrol, Text, Ppm, %Ppm%
Guicontrol, Text, Zmiana, %Zmiana%
Guicontrol, Text, altowanie, %Altowanie%
Guicontrol, Text, schowek, %Schowek%
Guicontrol, Text, kox, %kox%
Guicontrol, Text, afk, %afk%
Guicontrol, Text, kopanie, %kopanie%
Guicontrol, Text, kopanieoff, %kopanieoff%
Guicontrol, Text, repair, %repair%
Guicontrol, Text, kopanie533, %kopanie533%
Guicontrol, Text, kopanie533off, %kopanie533off%
Guicontrol, Text, spawn, %spawn%
Guicontrol, Text, bindhome, %bindhome%
Guicontrol, Text, spambot, %spambot%
Guicontrol, Text, disconnect, %disconnect%
Guicontrol, Text, wywalanie, %wywalanie%
Guicontrol, Text, zamknijwywalanie, %zamknijwywalanie%
Guicontrol, Text, tpa, %tpa%
Guicontrol, Text, tpacceptbind, %tpacceptbind%
Guicontrol, Text, Wedka, %wedka%
Guicontrol, Text, Perla, %perla%
MsgBox, Twoja konfiguracja została załadowana!


return
return

Copy:
{
    MsgBox, 4,, Czy napewno chcesz wykonać kopie configu? (Kliknij tak lub nie!)
IfMsgBox Yes
FileCreateDir, %A_AppData%\.wod-scripts\Config\CFG Copy 
FileCopy, %inifile%, %A_AppData%\.wod-scripts\Config\CFG Copy

sleep 1500

MsgBox, Twoja kopia jest teraz wykonywana! Kliknij OK oraz poczekaj chwile! 
sleep 2500
MsgBox, Kopia twoich configów została zapisana w katalogu wod.scripts w folderze AppData

IfMsgBox No
MsgBox, Nie wykonano kopi!
}
return






Ruby:
{
    MsgBox, 4,, Czy chcesz zostać przeniesiony na Mój kanał YT? (Kliknij tak lub nie!)
IfMsgBox Yes
Run https://www.youtube.com/channel/UCRqc64aMWLRMOZMkR6qg0SQ
else
MsgBox, Nie zostaniesz przeniesiony na YouTube!
}
return


Discord:
{
    MsgBox, 4,, Czy chcesz zostać przeniesiony na serwer Discord? (Kliknij tak lub nie!)
IfMsgBox Yes
Run https://discord.gg/C9PxQ95ySS
else
MsgBox, Nie zostaniesz przeniesiony na Discorda!
}
return









