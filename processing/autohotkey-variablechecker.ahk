#MaxThreadsperHotkey 2
!+s::
toggle := !toggle
loop
{
 if toggle
  {
  PixelSearch, right, down, 0,0, %A_screenWidth%, %A_ScreenHeight%, 0x97d6f1, 0, fast
  if ErrorLevel
  {
  }
  else
  {
  sleep, 5
  MouseClick, left, %right%, %down%
  }
  }
 else
  break
}
return