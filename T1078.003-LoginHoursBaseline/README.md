# User Login Hours Baseline (Lab)

Tracked normal login hours of users in the lab for the last 5 months using Splunk.

## Goal
Establish a baseline of typical login times so we can detect anomalous logins outside normal hours.

## Data Source
- Windows Security / Authentication logs
- Time range: last 5 months

## Useful SPL examples
spl
index=windows EventCode=4624
| eval hour=strftime(_time,"%H")
| stats count by user, hour
| sort - count
