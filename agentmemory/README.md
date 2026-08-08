# AgentMemory - Multi-Agent Shared Memory

## Architecture
- **Server**: iii-engine v0.11.2, runs on `http://localhost:3111`
- **Retrieval**: BM25 + on-device embeddings (zero LLM key required)
- **MCP Shim**: `@agentmemory/mcp` connects to the local server via `AGENTMEMORY_URL`

## Files
| File | Purpose |
|------|---------|
| `mcp.json` | MCP server config - paste into your agent's MCP settings |
| `start-agentmemory.bat` | Launches the server with iii.exe on PATH |
| `start-agentmemory.vbs` | VBS wrapper for Windows Startup folder (runs hidden) |

## Setup (Windows)
1. Download `iii.exe` v0.11.2 from [iii releases](https://github.com/iii-hq/iii/releases) -> place in `C:\Users\<user>\.local\bin\`
2. Copy `start-agentmemory.bat` and `start-agentmemory.vbs` to `C:\Users\<user>\.local\bin\`
3. Copy `start-agentmemory.vbs` to Windows Startup folder (`%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\`)
4. Add the `mcp.json` content to your agent's MCP config (WorkBuddy: `~/.workbuddy/mcp.json`, TRAE/Cursor/Claude Code: their respective MCP settings)

## Multi-Agent Sharing
Any agent using this MCP config connects to the **same local server**, so memories are shared across WorkBuddy, TRAE, Cursor, Claude Code, etc.
