#Log on time and log off time spl command 

index=* source="WinEventLog:Security" EventCode=4624 Account_Name="*"
| search NOT Account_Name="*$" NOT Account_Name="SYSTEM" NOT Account_Name="LOCAL SERVICE" NOT Account_Name="NETWORK SERVICE" NOT Account_Name="ANONYMOUS LOGON" NOT Account_Name="DWM-*" NOT Account_Name="UMFD-*"
| eval hour=strftime(_time, "%H:00")
| chart count by hour, Account_Name


#log in time by month 

index=* source="WinEventLog:Security" EventCode=4624 Account_Name="*"
| search NOT Account_Name="*$" NOT Account_Name="SYSTEM" NOT Account_Name="LOCAL SERVICE" NOT Account_Name="NETWORK SERVICE" NOT Account_Name="ANONYMOUS LOGON" NOT Account_Name="DWM-*" NOT Account_Name="UMFD-*"
| timechart span=1mon count by Account_Name

#log in time by day 

index=* source="WinEventLog:Security" EventCode=4624 Account_Name="*"
| search NOT Account_Name="*$" NOT Account_Name="SYSTEM" NOT Account_Name="LOCAL SERVICE" NOT Account_Name="NETWORK SERVICE" NOT Account_Name="ANONYMOUS LOGON" NOT Account_Name="DWM-*" NOT Account_Name="UMFD-*"
| timechart span=1d count by Account_Name
