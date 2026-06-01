# T1059.001 + T1543.003 + T1070.004 - PowerShell to Service Persistence & Cleanup

## Overview
This folder demonstrates a **Persistence + Cleanup** attack chain using Atomic Red Team.

**Attack Story:**  
An attacker uses PowerShell to create a malicious Windows Service for persistence, then performs cleanup to remove traces of their activity.

---

## Techniques Used

| Technique ID     | Name                                             | Description |
|------------------|-----------------------------------------------   |-----------|
| **T1059.001**    | Command and Scripting Interpreter: PowerShell    | Execute malicious commands via PowerShell |
| **T1543.003**    | Create or Modify System Process: Windows Service | Create a new service for persistence |
| **T1070.004**    | Indicator Removal on Host: File Deletion         | Delete files and traces to cover tracks |

---

## Atomic Red Team Commands

```powershell
# Run as Administrator

Invoke-AtomicTest T1059.001 -TestNumbers 2

Invoke-AtomicTest T1543.003 -TestNumbers 3     # Service Installation via PowerShell

Invoke-AtomicTest T1070.004 -TestNumbers 6     # File Deletion via PowerShell
