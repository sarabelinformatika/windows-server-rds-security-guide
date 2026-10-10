# 14. Monitoring, capacity, user experience, and service desk

Monitor the service from the user journey inward: external DNS and TLS, Gateway reachability, authentication/MFA, Broker, licensing, Session Host availability, profile attach, application launch, data dependency, printing, and transaction success.

Track concurrent sessions, disconnected sessions, logon duration, CPU, committed memory, paging, disk latency, profile-storage latency, network loss/latency, service state, certificate days remaining, CAL warnings, event-log collection gaps, Defender/EDR health, backup age, and restore-test age.

Set thresholds from baselines rather than arbitrary numbers. Alert on sustained impact, failed redundancy, or rapid trend, not every short spike. Include business context in alerts: affected collection, host, user count, application, owner, runbook, and escalation path.

The service desk needs a structured intake: user, device, location, connection method, time, error text, affected applications, other users affected, reconnect result, and screenshots without sensitive data. Distinguish access failure, authentication, Gateway, profile, application, printer, performance, and network incidents.

Maintain capacity headroom for patching and one-host failure. Forecast storage and profile growth, not only CPU.
