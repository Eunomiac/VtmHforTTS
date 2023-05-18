#SingleInstance, Force
#Persistent
#InstallMouseHook
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2
CoordMode, Mouse, Screen

XButton2::
/* *** FRONT ***
  TTS ACTIVE -- activate map, move cursor to center of map
  MAP ACTIVE -- record coordinates in clipboard
  VSC ACTIVE -- activate map
*/

if WinActive("ahk_exe Tabletop Simulator.exe") {
  WinActivate !!!MAP REFERENCE.png - IrfanView
  MouseMove -1400, 500
} else if WinActive("!!!MAP REFERENCE.png - IrfanView") {
  StatusBarGetText statusText, 6, !!!MAP REFERENCE.png - IrfanView
  clipboard := statusText
} else {
  WinActivate !!!MAP REFERENCE.png - IrfanView
}
return


XButton1::
/* *** BACK ***
  TTS ACTIVE -- activate VSC, move mouse
  MAP ACTIVE -- activate VSC
  VSC ACTIVE -- activate TTS
*/

if WinActive("ahk_exe Tabletop Simulator.exe") {
  WinActivate Visual Studio Code
  MouseMove -1400, 500
} else if WinActive("!!!MAP REFERENCE.png - IrfanView") {
  WinActivate Visual Studio Code
} else {
  WinActivate ahk_exe Tabletop Simulator.exe
  MouseMove 108, 263
  Click 108, 263
  Send ^v
}
return
