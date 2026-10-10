# 16. Deployment, pilot, acceptance, rollback, and operations

Use the sequence **assess → design → back up → pilot → validate → enforce → monitor → review**. Group changes by control family and avoid simultaneous identity, network, profile, and application changes.

## Pilot

Select representative users, applications, devices, printers, locations, and peak workflows. Define success before starting: authentication and MFA, logon time, profile attach, RemoteApp/desktop launch, printing/scanning, clipboard policy, application transaction, reconnect, logging, and rollback.

## Acceptance gates

- Architecture and data flows approved.
- Direct Internet RDP absent.
- Gateway/VPN, MFA, CAP/RAP, certificates, and expiry alerts validated.
- GPO baseline and effective policy evidenced.
- Privileged access and emergency access tested.
- Profiles, storage permissions, backup, and isolated restore validated.
- Monitoring, alerts, service desk, capacity, and escalation operational.
- Licensing and vendor support documented.
- Exceptions have owners and expiry dates.
- Business owner signs the acceptance record.

## Rollback

For every change record the previous state, backup/export, rollback command or procedure, decision point, maximum recovery time, responsible operator, and verification. A rollback that has never been rehearsed is an assumption.

Review monthly operational evidence and quarterly access, exceptions, capacity, certificates, recovery readiness, and lifecycle. Reassess after major application, identity, topology, or vendor changes.
