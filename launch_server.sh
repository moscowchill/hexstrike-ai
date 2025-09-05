#!/bin/bash

# HexStrike AI Server Launcher
cd /home/kali/Documents/Tools/hexstrike-ai
source hexstrike_env/bin/activate

echo "Starting HexStrike AI Server..."
echo "Server will be available at: http://localhost:8888"
echo "Press Ctrl+C to stop the server"
echo ""

python3 hexstrike_server.py