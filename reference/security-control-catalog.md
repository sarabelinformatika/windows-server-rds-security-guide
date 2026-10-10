# Security control catalog

| Control | Baseline | Evidence |
|---|---|---|
| Internet RDP | TCP/3389 not published | Firewall/NAT export |
| Remote access | VPN or RD Gateway with MFA | Policy and external test |
| Authorization | Named CAP/RAP and collection groups | Group and policy export |
| Privilege | Separate admin accounts; no DA on RDSH | Group/logon review |
| NLA/TLS | NLA required; supported TLS only | GPO, registry, TLS test |
| Application control | Audit then enforce AppLocker/WDAC | Policy and event logs |
| Redirection | Deny by default; exceptions documented | GPO result |
| Logging | Centralized, retained, monitored | Collector and alert test |
| Backup | Isolated copy and restore test | Recovery record |
| Lifecycle | Supported OS and application versions | Inventory and roadmap |
