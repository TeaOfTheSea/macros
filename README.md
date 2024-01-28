# Features

## Simple Keybinds
* Ctrl + q: Types "view monitor" and then hits enter. This will pull up the monitor on the terminal quickly.
* Ctrl + e: Types "switch" and then hits enter. Used for quickly switching the monitor as the terminal user.
* Ctrl + t: Types "transmit " as a shortcut for the use of the signal translator.
* Ctrl + Backspace: Hits the backspace key ten times.
* Ctrl + p: Types the text "ping " than types the data currently copied to the clipboard. This allows you to copy a radar-booster's name and ping it quickly.
* Ctrl + o: Types the text "flash " than types the data currently copied to the clipboard. This allows you to copy a radar-booster's name and flash it quickly.
* Ctrl + r: Will input all of the two letter codes in the game. If pressed, this will only happen once. If pressed and held, it will continue to do this every 1700ms. This timing can be changed using the ShutdownSleep variable if it feels off for you. If used in a mansion, this script is good for disabling all of the turrets and landmines. If used in a factory, it is still good for the prior uses, but will also toggle doors.

## Complicated Keybinds
* Ctrl + s: This bind is a prerequisite for most of the more complicated macros to work. Upon hitting Ctrl+s, AutoHotKey will look for files named "Radar.txt" and "Disable.txt". There is no error handling for if AutoHotKey doesn't find the files, so if they aren't there, don't hit Ctrl + s. When autohotkey reads these files, it stores Disable.txt as a variable and then makes two fariables for the text in Radar.txt. One of the variables stores Radar.txt with "ping " before each line and the other does the same with "flash ".
* Ctrl + l: This bind will print out the contents of the PingContent variable on a loop. If you have run the Ctrl + S bind after populating Radar.txt with a list of your radar boosters where each booster has it's own line, this bind will be able to ping your boosters on repeat while held.
* Ctrl + k: This bind will print out the contents of the FlashContent variable on a loop. If you have run the Ctrl + S bind after populating Radar.txt with a list of your radar boosters where each booster has it's own line, this bind will be able to flash your boosters on repeat while held.
* Ctrl + j: This bind will print out the contents of the DisableContent variable on a loop. If you have run the Ctrl + S bind after populating Disable.txt with a list of mines and turrets you've seen where each mine or turret code has it's own line, this bind will be able to disable mines and turrets on repeat while held. This bind operates similarly to the bind for Ctrl + r, but it allows the user to avoid constantly opening and closing doors at random to disable turrets and mines.

# Installing
1. Download AutoHotKey v2.0 from https://www.autohotkey.com/ .
2. Install AutoHotKey
3. Open the AutoHotKey Dash
4. Click Compile to open Ahk2Exe
5. Download the macro file https://github.com/TeaOfTheSea/macros/blob/main/Lethal.ahk
6. In Main Parameters, click the Browse button next to Source and find the Lethal.ahk file on your system.
7. In Main Parameters, click the Browse button next to Destination, move to the destination where you would like the .ext to be and type out "Lethal.ahk" for the file name.
8. Next to the text "Convert to executable," click Convert. The exe will now be available at the location you specified in step 7.
