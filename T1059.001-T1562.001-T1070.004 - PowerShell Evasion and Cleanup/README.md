# T1059.001 + T1562.001 + T1070.004 - PowerShell Evasion and Cleanup

### Overview
This folder demonstrates a **Defense Evasion + Cleanup** attack chain using Atomic Red Team.

**Attack Story:**  
An attacker uses PowerShell to disable Windows Defender (Impair Defenses) and then cleans up traces of their activity on the system.

---

### Techniques Used

 Technique ID      Name                                             | Description |

 **T1059.001**     Command and Scripting Interpreter: PowerShell    | Execute malicious commands via PowerShell |
 **T1562.001**     Impair Defenses                                  | Disable Windows Defender / Security Tools |
 **T1070.004**     Indicator Removal on Host: File Deletion         | Delete logs, dumps, and tools to cover tracks |

---

### Atomic Red Team Commands

```powershell
# Run as Administrator

Invoke-AtomicTest T1059.001

Invoke-AtomicTest T1562.001 -TestNumbers 17     # Tamper with Windows Defender (Recommended)

Invoke-AtomicTest T1070.004 -TestNumbers 3      # File Deletion

###nNOTE - Detection of Impair ddefenses faild, reason too mant access denied error on the powershell invoke when the ATR was performed  
