#SingleInstance, Force
#Persistent
#include <AHK-ViGEm-Bus>

; Create a new Xbox 360 controller
controller := new ViGEmXb360()
return

^6::
Loop, 
{   
    ; Move the RY axis up and down
    controller.Axes.RY.SetState(0)
    Sleep, 650 ; DO NOT CHANGE
    controller.Axes.RY.SetState(50)
    sleep 605 ;can be changed
    controller.Axes.RY.SetState(100)
    sleep 230 ; DO NOT CHANGE
    controller.Axes.RY.SetState(50)
    sleep 605 ;can be changed

    ; Press and release the LB button
    controller.Buttons.LB.SetState(true)
    Sleep, 100 ; DO NOT CHANGE
    controller.Buttons.LB.SetState(false) 
    Sleep, 605 ;can be changed

}
Return

^7::Reload

^8::ExitApp
