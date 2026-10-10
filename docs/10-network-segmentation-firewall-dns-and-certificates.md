# 10. Network segmentation, firewall, DNS, and certificates

RDS Session Hosts are high-value lateral-movement platforms because many users authenticate and applications reach sensitive services. Place RDS roles in controlled server networks and allow only documented dependencies.

Restrict Session Host egress to required DNS, NTP, domain services, update sources, licensing, application servers, databases, file shares, monitoring, backup agents, certificate validation, and approved Internet destinations. Prevent direct management from user networks. Administrative access should originate from a jump host or privileged workstation.

Maintain a port matrix with source, destination, protocol, purpose, owner, authentication, logging, and review date. Avoid broad `Any/Any` rules and permanent vendor source ranges.

Use split-horizon DNS deliberately. External names, internal service records, Gateway FQDN, certificate SANs, SPNs, and Connection Broker names must agree. Monitor certificate expiry and chain validity. Protect private keys, restrict export, and record renewal ownership.

Validate failover, not just steady state: DNS cache, CRL availability, firewall state synchronization, gateway certificate bindings, broker reachability, and storage paths must survive the intended failure scenarios.
