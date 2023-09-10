;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       XinXP, Vista, Seven
; Author:         Original idea by Slayer. Code updated and retooled by [VxE] @autohotkey.com forums


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Left_MFD = 6 ;EDIT THIS TO MATCH YOUR MFD's JOYSTICK NUMBER
Right_MFD = 5 ;EDIT THIS TO MATCH YOUR MFD's JOYSTICK NUMBER

Loop 20 
{ 
   Hotkey, %Left_MFD%Joy%A_Index%, HandleLeftMFD, ON 
   Hotkey, %Right_MFD%Joy%A_Index%, HandleRightMFD, ON 
} 
Return 

HandleRightMFD: 
HandleLeftMFD: 
   StringTrimLeft, N, A_ThisHotkey, InStr( A_ThisHotkey, "y" ) 
   W := SubStr( A_ThisLabel, 7, -3 ) 
   Z := Mod( N + 5, 10 ) 
   If ( 6 <= N && N <= 15 ) 
      Send, {LCtrl Down}{%W%}%Z%{LCtrl Up} 
   Else Send, {LCtrl Down}{%W%}{LCtrl Up}%Z% 
Return 

#esc::Exitapp