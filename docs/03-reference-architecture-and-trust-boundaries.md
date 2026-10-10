# 3. Reference architecture and trust boundaries

Use explicit trust boundaries. Internet clients terminate at a firewall and RD Gateway or VPN. RD Gateway authenticates users and evaluates CAP/RAP policy; it does not grant unrestricted network access. Connection Broker controls collection routing. Session Hosts run user workloads. Application, database, file, profile, licensing, monitoring, and backup systems remain separate services.

## Recommended zones

| Zone | Systems | Default rule |
|---|---|---|
| Edge | Firewall, VPN, RD Gateway | Deny except published flows |
| RDS control | Broker, Web Access, Licensing | Only required role traffic |
| Session | RDSH pool | No inbound user administration |
| Identity | Domain controllers, NPS/MFA | Restricted management and protocols |
| Data | File, SQL, application servers | Application-specific allowlist |
| Management | PAW, jump host, monitoring | Named privileged access |
| Recovery | Backup repository, restore network | Separate credentials and paths |

Do not collapse Gateway, Session Host, Domain Controller, SQL, file services, and backup into one machine for production. Small environments may accept fewer servers, but must document the increased blast radius and recovery consequences.

Align domain security with [Windows Server Active Directory Hardening](https://github.com/sarabelinformatika/windows-server-active-directory-hardening), especially tiered administration, LAPS, LDAP signing/channel binding, Kerberos/AES, NTLM reduction, privileged groups, auditing, and forest recovery.
