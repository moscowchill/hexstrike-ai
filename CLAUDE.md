# HexStrike AI - Claude Code Configuration

## Project Overview

HexStrike AI is an advanced AI-powered penetration testing MCP (Model Context Protocol) framework with 150+ security tools and 12+ autonomous AI agents. This project provides comprehensive cybersecurity automation capabilities through intelligent decision-making engines and real-time vulnerability analysis.

## Development Commands

### Server Management
```bash
# Start HexStrike MCP Server (default port 8888)
python3 hexstrike_server.py

# Start with custom port
python3 hexstrike_server.py --port 9999

# Run server with debug mode for detailed logging
python3 hexstrike_server.py --debug

# Run in background mode
python3 hexstrike_server.py &
```

### Testing & Verification
```bash
# Test server health and availability
curl http://localhost:8888/health

# Check tool availability and system status
curl http://localhost:8888/api/telemetry

# Test AI-powered target analysis
curl -X POST http://localhost:8888/api/intelligence/analyze-target \
  -H "Content-Type: application/json" \
  -d '{"target": "example.com", "analysis_type": "comprehensive"}'

# View cache statistics
curl http://localhost:8888/api/cache/stats
```

### Environment Setup
```bash
# Create and activate virtual environment
python3 -m venv hexstrike-env
source hexstrike-env/bin/activate  # Linux/Mac
# hexstrike-env\Scripts\activate   # Windows

# Install dependencies
pip3 install -r requirements.txt

# Check Python and dependency versions
python3 --version
pip3 list
```

### Process Management
```bash
# List all active security tool processes
curl http://localhost:8888/api/processes/list

# Get detailed process information
curl http://localhost:8888/api/processes/status/<process_id>

# View live monitoring dashboard
curl http://localhost:8888/api/processes/dashboard
```

### Linting and Testing
```bash
# Check Python code style (if tools available)
python3 -m flake8 . --exclude=hexstrike-env
python3 -m black . --check
python3 -m isort . --check-only

# Run unit tests (if available)
python3 -m pytest tests/

# Security vulnerability scan of dependencies
pip3 audit
```

## Project Information

### Architecture
- **Framework Type**: MCP (Model Context Protocol) Server
- **Primary Language**: Python 3.8+
- **Default Port**: 8888
- **Protocol**: HTTP/FastMCP
- **Architecture**: Multi-agent with autonomous AI decision-making

### Key Features
- **150+ Security Tools**: Comprehensive arsenal including network scanning, web application testing, cloud security, binary analysis, and forensics
- **12+ AI Agents**: Autonomous agents for intelligent decision-making, tool selection, and parameter optimization
- **Real-time Processing**: Sub-second response times with intelligent caching and process management
- **Vulnerability Intelligence**: CVE monitoring, exploit analysis, and attack chain discovery
- **Modern Visual Engine**: Real-time dashboards, progress visualization, and vulnerability cards
- **Advanced Process Management**: Smart caching, resource optimization, and graceful error recovery

### Security Tool Categories
1. **Network Security**: nmap, rustscan, masscan, amass, subfinder, fierce
2. **Web Application**: gobuster, feroxbuster, nuclei, sqlmap, wpscan, dalfox
3. **Cloud Security**: prowler, scout-suite, trivy, kube-hunter, kube-bench
4. **Binary Analysis**: ghidra, radare2, gdb, pwntools, volatility
5. **Authentication**: hydra, john, hashcat, medusa, crackmapexec
6. **CTF & Forensics**: binwalk, steghide, exiftool, foremost
7. **OSINT & Bug Bounty**: amass, hakrawler, paramspider, shodan integration

### AI Agents
- **IntelligentDecisionEngine**: Tool selection and parameter optimization
- **BugBountyWorkflowManager**: Automated bug bounty hunting workflows
- **CTFWorkflowManager**: CTF challenge solving and flag extraction
- **CVEIntelligenceManager**: Real-time vulnerability intelligence
- **AIExploitGenerator**: Automated exploit development and payload generation
- **VulnerabilityCorrelator**: Multi-stage attack chain discovery
- **TechnologyDetector**: Technology stack identification and fingerprinting
- **PerformanceMonitor**: System optimization and resource management

### API Endpoints
- `/health` - Server health check and tool availability
- `/api/command` - Execute arbitrary security commands with caching
- `/api/intelligence/analyze-target` - AI-powered target analysis
- `/api/intelligence/select-tools` - Intelligent tool selection
- `/api/processes/list` - List active security processes
- `/api/telemetry` - System performance metrics

### Dependencies
- **Python 3.8+**: Core runtime environment
- **FastAPI**: High-performance web framework for API endpoints
- **Security Tools**: 150+ external security tools (nmap, nuclei, etc.)
- **AI Integration**: Support for Claude, GPT, and other MCP-compatible agents
- **Process Management**: Advanced subprocess handling with resource monitoring

### Usage Patterns
This tool is designed for:
- ✅ **Authorized Penetration Testing** with proper written authorization
- ✅ **Bug Bounty Programs** within program scope and rules
- ✅ **CTF Competitions** in educational and competitive environments
- ✅ **Security Research** on owned or authorized systems
- ✅ **Red Team Exercises** with organizational approval

### Installation Requirements
- Python 3.8+ with pip package manager
- Virtual environment (recommended)
- Security tools installed system-wide (nmap, gobuster, nuclei, etc.)
- Sufficient disk space for tool outputs and caching
- Network connectivity for tool updates and vulnerability databases

### Performance Characteristics
- **Startup Time**: 2-5 seconds for server initialization
- **Memory Usage**: 100-500MB depending on active agents and cached data
- **Concurrent Processes**: Supports 10+ simultaneous security scans
- **Cache Performance**: 95%+ hit rate for repeated operations
- **API Response Time**: Sub-second for most operations

This project represents a significant advancement in AI-powered cybersecurity automation, combining traditional security tools with intelligent decision-making capabilities to provide comprehensive security assessment and testing capabilities.