#!/bin/bash
cd /home/kali/Documents/Tools/hexstrike-ai
source hexstrike_env/bin/activate
exec python3 hexstrike_mcp.py --server http://127.0.0.1:8888