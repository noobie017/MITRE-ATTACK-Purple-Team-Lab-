# MITRE ATT&CK Purple Teaming Lab

A realistic **Purple Team** home lab focused on simulating adversary techniques from the **MITRE ATT&CK** framework and detecting them in **Splunk** using **Sysmon** telemetry.

This project demonstrates end-to-end attack simulation, log ingestion, detection engineering, and incident response in a mini Active Directory environment.

### Lab Architecture


**Components:**
- **Attacker**: Kali Linux
- **Domain Controller**: Windows Server 2022 (Active Directory)
- **Endpoint**: Windows 10 (domain-joined)
- **SIEM**: Ubuntu Server running Splunk Enterprise
- **Logging**: Sysmon + Splunk Universal Forwarder on Windows machines

### Project Goals
- Simulate real-world adversary behavior using **Atomic Red Team**
- Generate high-quality telemetry with **Sysmon**
- Build and tune **Splunk detections** mapped to MITRE ATT&CK
- Create dashboards and alerts for SOC workflows
- Document detection coverage, gaps, and response playbooks


### Lab Architecture
<img width="1152" height="844" alt="image" src="https://github.com/user-attachments/assets/2a415b2e-5565-4d2d-b889-a76d53e9e5a8" />

