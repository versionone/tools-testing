#comments-start

AutoIt can be pulled down from http://www.autoitscript.com

Here is a simple script to open up a browser and automate mouse movements. 

Original use of this was to reproduce a bug (D-05296) around hovering on links. MouseMove takes x,y co-ordinates (naturally). These may need to be tweaked
to get the mouse directly over a link (as was our case).

WinActivate will do a partial match on the browser window title to determine which window to open up.

#comments-end

WinActivate ("Backlog")
MouseMove(320,610)
Sleep(600)
MouseMove(320,507)
