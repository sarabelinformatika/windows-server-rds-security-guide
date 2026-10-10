# 2. Discovery, dependencies, sizing, and licensing

Discovery must precede hardening. Enumerate RD roles, collections, Session Hosts, Connection Brokers, Gateways, Web Access servers, Licensing servers, certificate bindings, DNS records, CAP/RAP policies, NPS dependencies, GPO links, local policy, scheduled tasks, services, installed applications, profile technology, storage, printers, mapped drives, and backup jobs.

## Dependency map

For each business application document owner, version, authentication method, database, ports, file shares, per-user data, update process, vendor access, licensing service, maintenance contact, and recovery sequence. Validate whether the application supports multi-user Windows Server, RemoteApp, roaming profiles, and concurrent updates.

## Capacity baseline

Measure CPU ready/utilization, memory committed, paging, disk latency/IOPS, profile attach time, logon duration, network latency, and sessions per host during normal and peak periods. Maintain at least one-host failure capacity where business continuity requires it.

## Licensing

Record Windows Server licensing, RDS User or Device CAL mode, Licensing server activation, CAL version compatibility, Office/Microsoft 365 shared-computer activation, application licenses, SQL licensing, and third-party connector rights. Security design cannot compensate for invalid or incompatible licensing.

## Migration trigger

Windows Server 2016 extended support ends on January 12, 2027. Treat remaining 2016 RDS deployments as migration projects, not as indefinite hardening targets. See the SARABEL article: [Windows Server 2016 support ends in 2027](https://sarabelinformatika.hu/blog/windows-server-2016-tamogatas-vege-2027-ben-mit-kell-tenniuk-a-vallalkozasoknak).
