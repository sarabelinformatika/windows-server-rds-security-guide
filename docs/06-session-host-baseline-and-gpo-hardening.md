# 6. Session Host baseline and GPO hardening

Build Session Hosts from a documented baseline and keep configuration consistent across the collection. Use dedicated OUs and controlled GPO inheritance. Back up GPOs before changes, record precedence, and test with `gpresult` for representative users and computers.

## Baseline areas

- NLA required; supported RDP security and encryption only.
- Windows Firewall enabled with explicit inbound and outbound rules.
- Microsoft Defender or supported EDR active with vendor-approved exclusions.
- Credential protections, LSASS hardening, SMB signing, PowerShell logging, and audit policy.
- Unneeded roles, services, scheduled tasks, legacy protocols, and local accounts removed or disabled.
- Screen lock, idle timeout, disconnected-session timeout, and logoff policy aligned with operations.
- User-writable execution paths controlled.
- Browser, Office, script engine, and application policies hardened.
- Time, DNS, update source, event forwarding, and monitoring standardized.

Do not copy CIS or Microsoft baselines blindly. Classify each setting as enforce, pilot, exception, or not applicable. Application compatibility, printer drivers, profile containers, legacy authentication, and vendor agents require evidence-based testing.

Treat configuration drift as an incident precursor. Compare effective policy, installed software, services, firewall state, local groups, and critical registry values against the approved baseline.
