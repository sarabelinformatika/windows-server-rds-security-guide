# 8. FSLogix, profiles, storage, and permissions

Profile services are availability-critical. Define whether the deployment uses local profiles, User Profile Disks, FSLogix Profile Containers, or application-specific redirection. Do not mix methods without a documented migration plan.

For FSLogix, standardize supported versions, container format and size, dynamic/fixed choice, storage path, permissions, antivirus exclusions, concurrent-session behavior, Cloud Cache policy, and cleanup. Monitor attach failures, long logons, locked VHD/VHDX files, free space, latency, and orphaned sessions.

Use share and NTFS permissions that allow users to access only their own containers while administrators retain controlled recovery access. Do not grant broad modify rights at the profile root. Separate profile storage from ordinary departmental shares and from backup repositories.

Back up profile configuration and business-critical user data, but do not assume an open profile container can be crash-consistently copied. Use storage snapshots or supported backup integration and verify restores.

Define a profile recovery runbook: preserve the damaged container, capture logs, test a new profile, restore only required data, validate application state, and document root cause. Profile deletion must never be the first troubleshooting step.
