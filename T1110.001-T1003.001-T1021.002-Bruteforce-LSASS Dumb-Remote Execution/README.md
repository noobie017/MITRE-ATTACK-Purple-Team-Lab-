# T1110.001 + T1003.001 + T1021.002 - Brute Force to LSASS Dump to Remote Execution

### Overview
This simulation demonstrates a realistic attack chain where an attacker performs brute force to gain initial access, dumps credentials from LSASS, and then uses the stolen credentials for lateral movement via remote services (WinRM).

---

### Techniques Used

| Technique ID     | Name                                      | Description |
|------------------|-------------------------------------------|-----------|
| **T1110.001**    | Brute Force: Password Guessing            | Attempt to brute force user accounts |
| **T1003.001**    | OS Credential Dumping: LSASS Memory       | Dump credentials from memory |
| **T1021.002**    | Remote Services: SMB / WinRM              | Lateral movement using stolen credentials |

---

### Atomic Red Team Commands

```powershell
# Run as Administrator

Invoke-AtomicTest T1110.001 -TestNumbers 1     # Brute Force

Invoke-AtomicTest T1003.001 -TestNumbers 2     # LSASS Dump (comsvcs.dll)

Invoke-AtomicTest T1021.002 -TestNumbers 1     # WinRM Remote Execution
