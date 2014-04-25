Program()

Func Program()
    ; Run Windows Explorer or your program with the window maximized.
    Local $iPID = Run("C:\Windows\explorer.exe /n,/e,C:\Users\@UserName\Documents and Settings", "", @SW_SHOWMAXIMIZED)

    ; Wait 10 seconds for the Notepad window to appear.
    WinWait("[CLASS:Explorer", "My Documents", 3)

    ; Wait for 2 seconds.
    Sleep(2000)

    ; Close Windows Explorer or your program process using the PID returned by Run.
    ProcessClose($iPID)
EndFunc