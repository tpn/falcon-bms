This is a AutoHotKey script to use your Thrustmaster MFDs with the Superbug. It is very basic but gets the job done.

Instructions:

-We must make sure the pushbutton shortcuts are enabled. Open the VRS Aircraft configuration Manager (ACM). Under the "Prefrences" tab, click the "Keyboard" section on the left. Click the dropdown for category and select "Avionic Pushbuttons" click the checkbox next to ALL of these buttons make sure you scroll down and enable them all.

-Make sure you clear ALL button assignments for BOTH MFDs in FSX control section 

-DO NOT LOAD THE THRUSTMASTER FSX PLUGINS

1) Download and install AutoHotKey from http://www.autohotkey.com/

2) Put the included script file anywhere that is convienient for you to access (I put it on my desktop). To run the script just double click the script file. To terminate the script Right click the small green H icon on your taskbar and pick exit.

3) Modify the script for your control configuration:
   
Right click the script file and pick "Edit script"

You will now only need to edit the 2 Variables in the script:

Left_MFD = 6 
Right_MFD = 5 

On my system the Left MFD is "Joystick 6" and the right MFD is "Joystick 5". You will have to do this by trial and error or You can unplug your other game controllers and leave just one MFD plugged in and run the JoystickTest.ahk script to try to determine the proper number.

I recommend running the game in a window (hit Alt-Enter) then running the script to see if the buttons work and which DDI they are working on. If you have throttle, stick, rudders etc the numbers will be around 4 5 or 6, if you have just a single joystick they would probably be 2 or 3. 


I would like to thank [VxE] over at the AutoHotkey forum. He took the original script and idea then made it into a fine piece of code that is way more elegant than I could have made in such a short time. All the code in this version is his.