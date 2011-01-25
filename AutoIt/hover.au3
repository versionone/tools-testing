#comments-start
This is a simple script used in reproducing the behavior found in a defect we had (D-05296).

WinActivate performs a partial match on the Title that your browser currently has. This must be set correctly in order to launch the appropriate browser window. 
Just look in the upper left hand corner of your browser and plunk in the first word there. You probably only want to have only one browser open with that title
as I'm sure this will just grab the first one it sees.

If you need to tweak out where the cursor moves to, adjust the values in MouseMove(x-coord, y-coord).

#comments-end

WinActivate("Backlog")
MouseMove(300,610)
Sleep(600)
MouseMove(300,510)
