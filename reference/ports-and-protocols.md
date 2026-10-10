# Ports and protocols

| Flow | Port | Purpose | Notes |
|---|---:|---|---|
| Client → RD Gateway | TCP 443 | RDP over HTTPS | Publicly published access |
| Client → RD Gateway | UDP 3391 | RD Gateway UDP transport | Optional; validate firewall |
| Internal client → RDSH | TCP/UDP 3389 | RDP | Never expose directly to Internet |
| Domain members → DNS | TCP/UDP 53 | Name resolution | Domain DNS only |
| Domain members → Kerberos | TCP/UDP 88 | Authentication | Time-sensitive |
| Domain members → LDAP/LDAPS | TCP 389/636 | Directory | Prefer signing/channel binding |
| Domain members → SMB | TCP 445 | Profiles, shares, policy | Restrict by source/destination |
| Domain members → RPC | TCP 135 + dynamic | AD/RDS management | Limit to required zones |
| Hosts → NTP | UDP 123 | Time | Critical for Kerberos |
| RDS roles → Licensing | TCP 135 + dynamic RPC | CAL operations | Document actual path |
| Hosts → WinRM | TCP 5985/5986 | Management | Management zone only |

This is a planning catalog, not a universal firewall rule set. Validate the exact role, Windows version, application, authentication, and management flows.
