# T1543.003 - Create or Modify System Process: Windows Service

**MITRE ATT&CK Technique:** T1543.003  
**Tactic:** Persistence (and Privilege Escalation)

## Description
This technique involves creating or modifying a Windows Service to maintain persistence on a compromised system. Windows Services often run with **SYSTEM** privileges and can be configured to start automatically at boot, making them a reliable persistence method.

## Tools Used

### 1. Atomic Red Team (Primary Method)
We executed this technique using **Atomic Red Team**.

**Command Used:**
```powershell
Invoke-AtomicTest T1543

