# T1087.001 + T1003.001 + T1136.001 - Account Discovery to LSASS Dump to Backdoor Account

### Overview
This simulation demonstrates a realistic post-exploitation chain where an attacker first enumerates accounts on the system, dumps credentials from LSASS memory, and then creates a new local administrator account for persistence.

---

### Techniques Used

| Technique ID     | Name                                              | Description |
|------------------|---------------------------------------------------|-----------|
| **T1087.001**    | Account Discovery                                 | Enumerate local users and groups |
| **T1003.001**    | OS Credential Dumping: LSASS Memory               | Dump credentials from LSASS process |
| **T1136.001**    | Create Account: Local Account                     | Create a new backdoor administrator account |

---

### Atomic Red Team Commands

```powershell
# Run as Administrator

Invoke-AtomicTest T1087.001 -TestNumbers 1     # Account Discovery

Invoke-AtomicTest T1003.001 -TestNumbers 2     # LSASS Dump (comsvcs.dll)

Invoke-AtomicTest T1136.001 -TestNumbers 6     # Create Local Admin Account
