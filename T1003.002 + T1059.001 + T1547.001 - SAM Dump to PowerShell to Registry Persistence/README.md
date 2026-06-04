# T1003.002 + T1059.001 + T1547.001 - SAM Dump to PowerShell to Registry Persistence

### Overview
This simulation demonstrates an attack chain where the attacker dumps local account credentials from the SAM database, uses PowerShell for execution, and establishes persistence using Registry Run Keys.

---

### Techniques Used

| Technique ID     | Name                                                 | Description |
|------------------|------------------------------------------------------|--------------------------------|
| **T1003.002**    | OS Credential Dumping: Security Account Manager      | Dump credentials from SAM hive |
| **T1059.001**    | Command and Scripting Interpreter: PowerShell        | Execute malicious commands     |
| **T1547.001**    | Boot or Logon Autostart Execution: Registry Run Keys | Maintain persistence via registry |

---

### Atomic Red Team Commands

```powershell
# Run as Administrator

Invoke-AtomicTest T1003.002 -TestNumbers 1     # SAM Dump via reg.exe

Invoke-AtomicTest T1059.001 -TestNumbers 2

Invoke-AtomicTest T1547.001 -TestNumbers 1     # Registry Run Key
