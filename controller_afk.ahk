#SingleInstance, Force
#Persistent
#include <AHK-ViGEm-Bus>

; Create a new Xbox 360 controller
controller := new ViGEmXb360()
return

^6::
Loop, 
{
    controller.Buttons.LB.SetState(true)
    Sleep, 100
    controller.Buttons.LB.SetState(false) 
    Sleep, 500
    controller.Axes.LY.SetState(0)
    Sleep, 500
    controller.Axes.LY.SetState(50)
    Sleep, 2200
}
Return

^7::Reload

^8::ExitApp