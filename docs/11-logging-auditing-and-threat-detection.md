# 11. Logging, auditing, brute-force protection, and threat detection

Collect logs centrally before an incident. Preserve authentication, Gateway, NPS/MFA, RDP session, account-management, group-change, process-creation, PowerShell, Defender/EDR, AppLocker/WDAC, firewall, certificate, FSLogix, application, backup, and hypervisor events.

Correlate signals across layers. A Gateway failure, followed by MFA denial, followed by successful logon and unusual process creation is more meaningful than any event alone.

## Detection priorities

- Password spraying across many users or sources.
- Repeated failures followed by success.
- Disabled or new account use.
- Privileged group membership changes.
- Domain admin or service-account interactive logon.
- New services, scheduled tasks, startup entries, or unsigned binaries.
- PowerShell encoded commands and suspicious script hosts.
- Defender/EDR disabled, exclusions changed, or logging interrupted.
- Unexpected clipboard/drive use, mass file access, or archive creation.
- Backup deletion, repository access, or snapshot tampering.

Synchronize time and define retention based on investigation, regulatory, and storage needs. Restrict log access and monitor collection gaps. Test alert routing and escalation with simulated safe events.
