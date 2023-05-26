#SingleInstance, Force
#Persistent
#include <AHK-ViGEm-Bus>

; Create a new Xbox 360 controller
controller := new ViGEmXb360()
return

^6::
{
	controller.Buttons.X.SetState(true)
	sleep 600
	controller.Buttons.X.SetState(false)
	sleep 1000
	controller.Axes.LX.SetState(100)
	sleep 203
	controller.Axes.LX.SetState(50)
	sleep 50
	controller.Axes.LY.SetState(0)
	sleep 100
	controller.Axes.LY.SetState(50)
	sleep 4000

	loop,
		{
			; reacquire 9 extoic
			loop, 17
				{
					controller.Buttons.A.SetState(true)
					Sleep, 100
					controller.Buttons.A.SetState(false)
					Sleep, 250
				}
			sleep 300
			
			controller.Buttons.Start.SetState(true)
			sleep 100
            controller.Buttons.Start.SetState(false)
            sleep 300
            controller.Axes.LX.SetState(100)
            sleep 590
            controller.Axes.LX.SetState(50)
            sleep 300
		
			; delete all extoics
			loop, 9 
				{
					controller.Buttons.X.SetState(true)
					Sleep, 4100
					controller.Buttons.X.SetState(false)
					Sleep, 750
				}
			sleep 200
		
			controller.Buttons.B.SetState(true)
			sleep 300
			controller.Buttons.B.SetState(false)
			sleep 4000
		}
		Return
}

^7::Reload

^8::ExitApp