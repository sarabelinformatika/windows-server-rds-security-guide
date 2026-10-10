# 15. Incident response and business continuity

Prepare runbooks for compromised account, password spraying, Gateway vulnerability, Session Host malware, ransomware, certificate expiry, profile outage, Broker failure, licensing failure, storage outage, and identity outage.

## Response sequence

1. Confirm scope and business impact.
2. Preserve volatile and centralized evidence.
3. Contain accounts, hosts, network paths, or published services without destroying evidence.
4. Maintain approved business continuity: alternate host, limited collection, VPN path, local fallback, or manual process.
5. Eradicate root cause and rotate affected credentials/keys.
6. Recover from known-good state.
7. Validate identity, Gateway, sessions, profiles, applications, logging, and backup.
8. Document timeline, decisions, exceptions, and preventive actions.

Do not mass-logoff users, delete profiles, wipe servers, or rotate every account without understanding operational and evidentiary impact. Pre-authorize who may disable remote access or isolate a host.

Test continuity with realistic exercises: unavailable Gateway, failed Session Host, inaccessible profile share, expired certificate, compromised administrator, and restore from isolated backup. Measure decisions and communications as well as technical recovery.
