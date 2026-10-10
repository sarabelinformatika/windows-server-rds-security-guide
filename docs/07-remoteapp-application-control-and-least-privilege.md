# 7. RemoteApp, application control, and least privilege

Publish only required applications and collections. RemoteApp reduces desktop exposure but is not a security boundary by itself: file dialogs, child processes, scripting engines, shell escapes, URL handlers, and application integrations can expose broader capabilities.

Use AppLocker or Windows Defender Application Control after inventory and audit mode. Start with known publishers and managed paths, then identify unsigned line-of-business software. Avoid allowlisting broad user-writable directories. Control PowerShell, cmd, wscript/cscript, mshta, rundll32, installers, archive tools, and browser downloads according to business need.

Remove local administrator rights and enforce least privilege on services, shares, databases, scheduled tasks, registry keys, and application directories. Separate application update authority from daily RDS use.

For accounting, ERP, document-management, or legacy applications, document database connectivity, file locking, runtime dependencies, per-user configuration, update sequencing, and recovery. Test concurrent use, not only a single administrator session.

Record every exception with owner, reason, affected systems, expiry, compensating control, detection method, and removal plan.
