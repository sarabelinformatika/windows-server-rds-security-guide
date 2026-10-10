# 13. Backup, recovery, and forest dependencies

Back up recoverable services, not merely virtual disks. Classify configuration, system state, certificates/private keys, Connection Broker database, Gateway/NPS policy, GPOs, scripts, application data, file shares, profile containers, monitoring configuration, and documentation.

Use 3-2-1 principles with an isolated or immutable copy and separate backup credentials. Prevent Session Host administrators from deleting recovery points. Encrypt copies and protect keys.

Define recovery order: network and virtualization, identity/DNS/time, certificate validation, licensing, data services, Gateway/Broker, profile storage, Session Hosts, applications, monitoring, then user acceptance. RDS recovery fails if AD, DNS, SQL, storage, or licensing dependencies are omitted.

Test restores in an isolated network. Validate boot, domain trust, role health, certificate binding, Gateway authorization, collection routing, profile attach, application transaction, printing if critical, logging, and user acceptance. Record actual RTO/RPO.

Forest recovery is a separate discipline. Align with the recovery guidance in [Windows Server Active Directory Hardening](https://github.com/sarabelinformatika/windows-server-active-directory-hardening) and keep offline recovery documentation accessible during an identity outage.
