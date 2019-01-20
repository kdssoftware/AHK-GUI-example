SetWorkingDir %A_ScriptDir%
SendMode Input
#SingleInstance, force

Menu, MyMenuBar, Add, &Back, mainGui
Menu, MyMenuBar, Add, &How to use, how
Gui main:Add, Text, x50 w160 , Thrones of Legends bot
Gui main:Add, Button, w150 x35 gRankedBattles, Ranked Battles
Gui main:Add, Button, w150 gCampaignBattles, Campaign Battles
Gui main:Add, Button, w150 gCardPacks, Open/buy card Packs
Gui main:Add, Button, w150 gShortcut, ShortCuts
Gui main:Add, Button, w150 gtests, for testing

;;;Shortcuts
Gui SC: Menu, MyMenuBar
Gui SC: Add, Text, x60 , ShortCuts
Gui SC: Add, Text, w30 x15 y28 , start:
Gui SC: Add, Hotkey, w114 x50 y25 vStartKey, f8
Gui SC: Add, Text, w30 x15 , stop:
Gui SC: Add, Hotkey, w114 x50 y48 vStopKey, f9
Gui SC: Add, Text, w30 x15, pause:
Gui SC: Add, Hotkey, w114 x50 y71 vPauseKey, f10
Gui SC: Add, Text, w30 x15, for:
Gui SC: Add, DropDownList, w114 x50 y94 vBotType, Ranked Battles||Campaign Battles|Open/Buy card packs
Gui SC: Submit

;;;Ranked Battle
Gui RB: Menu, MyMenuBar
GUI RB: Add, Text, x50 w160, Ranked Battle
Gui RB: Add, Button, w150 x35, Start

;;;Campaign Battles
Gui CB: Menu, MyMenuBar
Gui CB: Add, Text, x50 w160, Campaign Battles
Gui CB: Add, Button, w150 x35, Start
Gui CB: Add, Radio, vCBoption Checked, keep going into the story
Gui CB: Add, Radio, vCBoption2, redo same story
Gui CB: Add, CheckBox, vStopWhenNoEnergy, Stop when out of energy

;;;Card Packs
Gui CP: Menu, MyMenuBar
Gui CP: Add, Text, x50 w160 ,  Card Packs
Gui CP: Add, Button, w150 x35, Start
Gui CP: Add, CheckBox, vBuyPremium, Buy premium
Gui CP: Add, CheckBox, vMeltRegular Checked, Melt regulars
Gui CP: Add, CheckBox, vMeltRares, Melt rares

;;;Test
Gui test:Menu, MyMenuBar
Gui test:Add, Text,, testing
Gui test:Add, Button, w150 gsetSizeOfToL, set size of ToL
Gui test:Add, Text,, %A_ScreenWidth% by %A_ScreenHeight%
Gui test:Add, Text,, % Format("Pause : {1}", PauseKey)

Gui main:Show
Return
;;;;;;;;MAIN BOT PROGRAM;;;;;;;;;
getStartingRightcorner(){

    return s
}

setSizeOfToL:
    Msgbox % format("go to ToL and press the start-key ({1}) to start",PauseKey)
    Pause, On

    WinGetTitle, Title
    if(Title = Throne Of Legends - Strategy Sex Game | Nutaku - Mozilla Firefox){
        PixelSearch, ToLX, ToLY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, 0x472816
        return
    }
    return



getAmountOfEnergy(){

    return e
}

getAmountOfCards(){

    return c
}



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


how:
    MsgBox, not finished yet
return

GuiEscape:
GuiClose:
ExitApp

mainGui:
Gui CP: Hide
Gui RB: Hide
Gui CB: Hide
Gui SC: Submit
Gui SC: Hide
Gui test: Hide
Gui main:show
return

Tests:
Gui main:Hide
Gui test:show
return

RankedBattles:
Gui main: Hide
Gui RB: show
Return

CampaignBattles:
Gui main: Hide
Gui CB: show
return

CardPacks:
Gui main: Hide
GUi CP: show
return

shortcut:
Gui main: Hide
Gui SC: show
return

;;https://stackoverflow.com/questions/956224/get-available-screen-area-in-autohotkey
