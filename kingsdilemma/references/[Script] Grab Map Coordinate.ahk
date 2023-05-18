#SingleInstance, Force
#Persistent
#InstallMouseHook
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

XButton1::
if WinActive("!!!MAP REFERENCE.png - IrfanView") {
  WinActivate, Visual Studio Code
} else {
  WinActivate, !!!MAP REFERENCE.png - IrfanView
}
return

XButton2::
StatusBarGetText, statusText, 6, !!!MAP REFERENCE.png - IrfanView
clipboard := statusText
return