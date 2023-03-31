

; ******************************* Strings/Messages ******************************* 

MsgBanner:    
   !tx ChrClear, ChrToLower, ChrPurple, ChrRvsOn, "             TeensyROM v0.2             ", ChrRvsOff, 0
MsgFrom:    
   !tx ChrReturn, SourcesColor, "From ", 0 
MsgSelect:
   !tx SourcesColor, "Sources:          "
   !tx ChrRvsOn, OptionColor, "Up", ChrRvsOff, MenuMiscColor, "/", ChrRvsOn, OptionColor, "Dn", ChrRvsOff, MenuMiscColor, "CRSR: Page", ChrReturn
   !tx " ", ChrRvsOn, OptionColor, "F1", ChrRvsOff, SourcesColor,  " Teensy Mem   "
   !tx " ", ChrRvsOn, OptionColor, "F2", ChrRvsOff, MenuMiscColor, " Exit to BASIC", ChrReturn
   !tx " ", ChrRvsOn, OptionColor, "F3", ChrRvsOff, SourcesColor,  " SD Card      "
   !tx " ", ChrRvsOn, OptionColor, "F4", ChrRvsOff, MenuMiscColor, " Music on/off", ChrReturn
   !tx " ", ChrRvsOn, OptionColor, "F5", ChrRvsOff, SourcesColor,  " USB Drive    "
   !tx " ", ChrRvsOn, OptionColor, "F6", ChrRvsOff, MenuMiscColor, " Settings", ChrReturn
   !tx " ", ChrRvsOn, OptionColor, "F7", ChrRvsOff, SourcesColor,  " USB Host     "
   !tx " ", ChrRvsOn, OptionColor, "F8", ChrRvsOff, MenuMiscColor, " MIDI to SID"
    !tx 0
MsgNoHW:
   !tx ChrReturn, ChrReturn, ChrToLower, ChrYellow, "TeensyROM hardware not detected!!!", ChrReturn, 0
MsgNoItems:
   !tx ChrReturn, OptionColor, " Nothing to show!", 0

MsgMenuSD:
   !tx "SD Card:", 0
MsgMenuTeensy:
   !tx "Teensy Mem:", 0
MsgMenuUSBHost:
   !tx "USB Host:", 0
MsgMenuUSBDrive:
   !tx "USB Drive:", 0

MsgSettingsMenu:
   !tx ChrReturn, SourcesColor, "Settings Menu:", ChrReturn
   !tx ChrReturn, OptionColor 
   !tx "    Immediate:"                           , ChrReturn
   !tx "       ", ChrRvsOn, OptionColor, "F1", ChrRvsOff, SourcesColor,  " Toggle Music On/Off", ChrReturn
   !tx "       ", ChrRvsOn, OptionColor, "F2", ChrRvsOff, SourcesColor,  " Synch Time via Ethernet", ChrReturn
   !tx ChrReturn, OptionColor 
   !tx "    Power-up Defaults:"                   , ChrReturn
   !tx "       ", ChrRvsOn, OptionColor, "F3", ChrRvsOff, SourcesColor,  " Music State:", ChrReturn
   !tx "       ", ChrRvsOn, OptionColor, "F4", ChrRvsOff, SourcesColor,  "  Synch Time:", ChrReturn
   !tx "       ", ChrRvsOn, OptionColor, "F5", ChrRvsOff, SourcesColor,  "   Time Zone:", ChrReturn, ChrReturn
   !tx "    ", ChrRvsOn, OptionColor, "F7", ChrRvsOff, SourcesColor,  " Exit", ChrReturn
   !tx 0  ;near max of 256 bytes

MsgCreditsInfo:
   !tx ChrReturn, ChrReturn, MenuMiscColor 
   !tx "    Music by Frank Zappa", ChrReturn
   !tx " Here's to all the other Loader &", ChrReturn
   !tx "    emulation projects out there: ", ChrReturn
   !tx "       Thank you for the inspiration!", ChrReturn, ChrReturn
   !tx "    2023 by Travis Smith @ Sensorium", ChrReturn
   ;!tx " github.com/SensoriumEmbedded/TeensyROM", ChrReturn
   !tx 0

MsgM2SPolyMenu:    
   !tx ChrReturn, ChrReturn, SourcesColor, "MIDI to SID Polyphonic Mode"
   !tx ChrReturn, ChrReturn, OptionColor 
   !tx "   ", ChrRvsOn, "T", ChrRvsOff, "riangle:", ChrReturn
   !tx " Sa", ChrRvsOn, "W", ChrRvsOff, "tooth:", ChrReturn
   !tx "   ", ChrRvsOn, "P", ChrRvsOff, "ulse:", ChrReturn
   !tx "  D", ChrRvsOn, "U", ChrRvsOff, "ty Cycle:", ChrReturn
   !tx "   ", ChrRvsOn, "N", ChrRvsOff, "oise:", ChrReturn
   !tx ChrReturn
   !tx "   ", ChrRvsOn, "A", ChrRvsOff, "ttack:", ChrReturn
   !tx "   ", ChrRvsOn, "D", ChrRvsOff, "ecay:", ChrReturn
   !tx "   ", ChrRvsOn, "S", ChrRvsOff, "ustain:", ChrReturn
   !tx "   ", ChrRvsOn, "R", ChrRvsOff, "elease:", ChrReturn
   !tx ChrReturn
   !tx "  E", ChrRvsOn, "x", ChrRvsOff, "it", ChrReturn
   !tx ChrReturn
   !tx "  Now Playing:", ChrReturn
   !tx "   V1  V2  V3  X", ChrReturn
   !tx 0
TblM2SAttack:  ;4 bytes each, no term
   !tx "  2m","  8m"," 16m"," 24m"," 38m"," 56m"," 68m"," 80m"
   !tx "100m","250m","500m","800m","   1","   3","   5","   8"
TblM2SDecayRelease:  ;4 bytes each, no term
   !tx "  6m"," 24m"," 48m"," 72m","114m","168m","204m","240m"
   !tx "300m","750m"," 1.5"," 2.4","   3","   9","  15","  24"
TblM2SSustPct:  ;4 bytes each, no term
   !tx " 0.0"," 6.7","13.3","20.0","26.7","33.3","40.0","46.7"
   !tx "53.3","60.0","66.7","73.3","80.0","86.7","93.3"," 100"
TblM2SDutyPct:  ;4 bytes each, no term
   !tx " 0.0"," 6.3","12.5","18.8","25.0","31.3","37.5","43.8"
   !tx "50.0","56.3","62.5","68.8","75.0","81.3","87.5","93.8"
MsgOn:
   !tx "On ", 0
MsgOff:
   !tx "Off", 0
MsgLoading:
   !tx ChrClear, ChrYellow, ChrToUpper, "loading: ", 0
MsgError:
   !tx ChrRed, "Error: ", 0
MsgErrNoData:
   !tx "No Data Available", 0
;MsgErrNoFile:
;   !tx "No File Available", 0
   
TblItemType: ;must match rtNone, rt16k, etc order!
   !tx "--- ","16k ","8Hi ","8Lo ","Prg ","Unk ","Crt ","Dir " ;4 bytes each, no term
   
