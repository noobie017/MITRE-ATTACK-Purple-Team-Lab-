# T1059.001 + T1055.001 + T1053.005 - PowerShell to Process Injection to Scheduled Task Persistence

## Overview
This simulation demonstrates a highly stealthy attack chain where the attacker uses PowerShell to perform process injection into a legitimate process and then creates a Scheduled Task for persistence.

---

## Techniques Used

| Technique ID     | Name                                              | Description |
|------------------|---------------------------------------------------|-----------|
| **T1059.001**    | Command and Scripting Interpreter: PowerShell     | Execute malicious PowerShell code |
| **T1055.001**    | Process Injection: Dynamic-link Library Injection | Inject malicious DLL into legitimate process |
| **T1053.005**    | Scheduled Task/Job: Scheduled Task                | Create a scheduled task for persistence |

---

## Atomic Red Team Commands

```powershell
# Run as Administrator

Invoke-AtomicTest T1059.001 -TestNumbers 2

Invoke-AtomicTest T1055.001 -TestNumbers 1     # DLL Injection via PowerShell

Invoke-AtomicTest T1053.005 -TestNumbers 1     # Create Scheduled Task
