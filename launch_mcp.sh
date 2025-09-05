#!/bin/bash

# HexStrike AI MCP Client Launcher
cd /home/kali/Documents/Tools/hexstrike-ai
source hexstrike_env/bin/activate

echo "Starting HexStrike AI MCP Client..."
echo "Connecting to server at: http://127.0.0.1:8888"
echo "Press Ctrl+C to stop the client"
echo ""

python3 hexstrike_mcp.py --server http://127.0.0.1:8888