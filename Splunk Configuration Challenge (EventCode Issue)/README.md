## Splunk Configuration Challenge (EventCode Issue)

### Problem Faced
After setting up Sysmon and the Universal Forwarder, we could see raw events being ingested into Splunk (over 150,000 events), but:
- The `EventCode` / `EventID` field was **not extracted**.
- Fields like `Image`, `CommandLine`, `registry_path`, and `User` were mostly missing or not usable.
- Queries such as `| stats count by EventCode` returned **0 results** in the Statistics tab, even though raw events existed.
- This made it very difficult to hunt for specific techniques (e.g., T1543.003 service creation).

### Troubleshooting Steps Performed

We systematically troubleshot the issue with the following steps:

1. **Initial Diagnosis**  
   Realized that Sysmon events were arriving as raw XML, but Splunk was not parsing the fields correctly.

2. **Corrected `inputs.conf` on Windows Universal Forwarder**  
   Changed from incorrect `source = ...` to proper `sourcetype = XmlWinEventLog:Microsoft-Windows-Sysmon/Operational` with `renderXml = true`.

3. **Tested multiple sourcetype variations**  
   Tried `XmlWinEventLog:Microsoft-Windows-Sysmon/Operational`, `source=...`, and lowercase versions.

4. **Used raw XML extraction as temporary workaround**  
   Used `rex` command to manually extract `<EventID>` from `_raw` data.

5. **Final Fix**  
   Updated the Sysmon stanza in `inputs.conf` on the Windows machine to the correct configuration:

   ```ini
   [WinEventLog://Microsoft-Windows-Sysmon/Operational]
   index = endpoint
   disabled = false
   renderXml = true
   sourcetype = XmlWinEventLog:Microsoft-Windows-Sysmon/Operational
