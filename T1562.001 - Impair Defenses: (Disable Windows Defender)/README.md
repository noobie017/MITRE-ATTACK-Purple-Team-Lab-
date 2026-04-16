# T1562.001 - Impair Defenses: Disable or Modify Tools

**MITRE ATT&CK Technique:** [T1562.001](https://attack.mitre.org/techniques/T1562/001/)

**Tactic:** Defense Evasion

**Objective:** Disable or modify Windows Defender to simulate an attacker weakening security controls on the target system.

## Attack Attempts Summary

### 1. Attempt from Kali Linux (Remote)
**Tools tried:** Custom PowerShell scripts via SSH

**Result:** Skipped – Moved directly to Atomic Red Team for reliability.

### 2. Successful Method: Atomic Red Team (Local Execution)

**Command Used:**
```powershell
# Run all tests for T1562.001
Invoke-AtomicTest T1562.001

# Most common and noisy tests
Invoke-AtomicTest T1562.001 
