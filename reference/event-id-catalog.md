# Event ID catalog

| Source | Event | Meaning |
|---|---:|---|
| Security | 4624 | Successful logon |
| Security | 4625 | Failed logon |
| Security | 4648 | Explicit credentials used |
| Security | 4672 | Special privileges assigned |
| Security | 4720/4726 | User created/deleted |
| Security | 4728/4732/4756 | Group membership changed |
| TerminalServices-LocalSessionManager | 21/24/25 | Logon/disconnect/reconnect |
| TerminalServices-RemoteConnectionManager | 1149 | RDP authentication |
| TerminalServices-Gateway | 200/300 series | Gateway authorization/session events |
| AppLocker | 8003/8004 | Audit/block events |

Event meaning can vary by channel and OS build. Validate Microsoft documentation and local event XML before building detections.
