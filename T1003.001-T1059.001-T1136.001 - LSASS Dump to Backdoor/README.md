# T1003.001 + T1059.001 + T1136.001 - LSASS Dump to Backdoor

### Overview
This folder simulates a realistic **post-exploitation chain** where an attacker:

1. Dumps credentials from LSASS memory (**T1003.001**)
2. Uses PowerShell for further execution (**T1059.001**)
3. Creates a new local administrator account for persistence (**T1136.001**)

**Attack Goal:** Gain high-privileged credentials and establish persistence via a backdoor account.

---

### Atomic Red Team Commands

```powershell
# Run these commands as Administrator

Invoke-AtomicTest T1003.001 -TestNumbers 2     # LSASS Dump using comsvcs.dll (LOLBin)

Invoke-AtomicTest T1059.001                     # PowerShell Execution

Invoke-AtomicTest T1136.001 -TestNumbers 6     # Create Local Admin Account
