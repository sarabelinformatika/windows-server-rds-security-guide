# 4. RD Gateway, VPN, publishing, and TLS

Never publish Session Hosts directly. Prefer VPN for managed devices that require broader private-network access and RD Gateway for controlled RDP tunneling over HTTPS. Some organizations use both: device VPN establishes trust, then RD Gateway enforces RDS-specific authorization.

## Gateway controls

- Use a publicly trusted certificate whose SAN matches the external FQDN.
- Restrict TLS to supported protocols and cipher suites; remove obsolete protocol fallback.
- Separate Connection Authorization Policies from Resource Authorization Policies.
- Require named groups and MFA; do not authorize Domain Users by default.
- Restrict RAP targets to approved RDS resources, not the entire domain.
- Rate-limit and alert on repeated failures at the edge and identity layer.
- Patch Gateway, IIS components, NPS extension, MFA connector, and underlying OS promptly.

Validate external DNS, internal name resolution, CRL/OCSP reachability, time synchronization, certificate chain, expiry alerting, MTU, idle/reconnect behavior, and failover. Test from a clean external network, not only from the LAN.

Document emergency access. Break-glass must be time-bound, monitored, protected by separate credentials, and tested without silently bypassing all controls.
