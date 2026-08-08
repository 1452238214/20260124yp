' VBS launcher - runs start-agentmemory.bat completely hidden (no console window)
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd /c ""C:\Users\asus\.local\bin\start-agentmemory.bat""", 0, False
