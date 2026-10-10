# 5. Identity, MFA, and privileged access

Use individual accounts. Shared reception, administrator, vendor, or service identities remove accountability and complicate revocation. Joiner/mover/leaver processes must update AD groups, RDS collections, applications, file permissions, MFA enrollment, profiles, and vendor access.

## Privilege model

Standard RDS users must not be local administrators. RDS operators may manage sessions without receiving domain-wide privilege. Server administrators use separate privileged accounts from hardened management devices. Domain administrators should not sign in interactively to Session Hosts.

Require MFA at the remote-access boundary. Define permitted factors, enrollment ownership, recovery, lost-device procedure, high-risk sign-in handling, and bypass expiry. Alert on repeated MFA denials and impossible or unexpected access patterns.

Use gMSA where services support it, Windows LAPS for local administrator passwords, protected groups for high-value accounts, and just-enough/time-bound administration where practical. Disable dormant accounts, prevent delegation where unnecessary, and review group nesting.

The detailed domain baseline is maintained in [Windows Server Active Directory Hardening](https://github.com/sarabelinformatika/windows-server-active-directory-hardening). RDS must inherit that identity posture rather than creating exceptions around it.
