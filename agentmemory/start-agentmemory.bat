@echo off
REM === AgentMemory Server Startup (login trigger) ===
REM Sets PATH to include iii.exe, then launches the full agentmemory server on :3111
set "PATH=C:\Users\asus\.local\bin;%PATH%"
set "AGENTMEMORY_URL=http://localhost:3111"
"E:\Program Files\nodejs\npx.cmd" -y @agentmemory/agentmemory

