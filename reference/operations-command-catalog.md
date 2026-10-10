# Operations command catalog

All commands below are observational unless clearly adapted by the operator.

```powershell
Get-RDServer
Get-RDSessionCollection
Get-RDSessionHost
Get-RDUserSession
Get-RDLicenseConfiguration
Get-RDCertificate
Get-GPResultantSetOfPolicy -ReportType Html -Path .\gpresult.html
Get-WinEvent -LogName 'Microsoft-Windows-TerminalServices-Gateway/Operational' -MaxEvents 50
Get-NetFirewallProfile
Get-NetFirewallRule -Enabled True
Get-ChildItem Cert:\LocalMachine\My
Get-MpComputerStatus
```

Run from an authorized administrative session. Some cmdlets require the Remote Desktop module or Connection Broker context.
