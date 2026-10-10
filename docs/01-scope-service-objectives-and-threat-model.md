# 1. Scope, service objectives, and threat model

RDS is a business service, not a single server. Its availability depends on identity, DNS, certificates, licensing, gateway, broker, Session Hosts, profiles, applications, file services, databases, monitoring, and backup. Define the supported user groups, applications, locations, devices, operating hours, and regulatory constraints before changing controls.

## Service objectives

Record measurable targets for authentication success, logon duration, application launch, reconnect time, concurrent sessions, maintenance windows, RTO, RPO, and support response. Classify failures by business impact: unavailable access, degraded application, profile failure, printing failure, or security incident.

## Threat model

Prioritize exposed RDP, password spraying, stolen credentials, MFA fatigue, vulnerable gateways, untrusted redirection, privilege escalation, lateral movement, ransomware, profile-container corruption, certificate expiry, licensing failure, and destructive administrator error. Map each threat to preventive, detective, and recovery controls.

## Minimum production boundary

- No direct Internet exposure of TCP/3389.
- Access through VPN and/or RD Gateway with MFA.
- Separate standard users, RDS operators, server administrators, and domain administrators.
- Supported Windows Server versions with current security updates.
- Central event collection, alerting, tested backups, and documented rollback.
- Defined owners for identity, gateway, hosts, applications, profiles, network, and recovery.

## Evidence

Store architecture diagrams, firewall exports, role inventory, GPO backups, certificate inventory, test results, exceptions, and sign-off. Reassess after topology, identity-provider, application, or licensing changes.
