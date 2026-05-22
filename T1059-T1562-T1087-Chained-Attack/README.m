# T1059.001 + T1562.001 + T1087.001 - Chained PowerShell Attack Simulation

### Overview
This folder demonstrates a **3-stage chained attack** using Atomic Red Team:

1. **T1059.001** - Command and Scripting Interpreter: PowerShell
2. **T1562.001** - Impair Defenses (Disable Windows Defender)
3. **T1087.001** - Account Discovery

The goal is to simulate a realistic post-exploitation chain and provide proper **Splunk detection queries** using Sysmon logs.

---

##  Attack Chain Executed

### Commands Used:
```powershell
Invoke-AtomicTest T1059.001
Invoke-AtomicTest T1562.001
Invoke-AtomicTest T1087.001
