# 9. Clipboard, drive, printer, USB, and redirection controls

RDP redirection improves usability but creates data-exfiltration, malware-ingress, privacy, and support risks. Decide each capability by user group and business workflow.

| Capability | Default posture | Typical exception |
|---|---|---|
| Clipboard | Restrict or disable file transfer | Controlled text copy |
| Drive mapping | Disable | Approved managed-device workflow |
| USB/Plug and Play | Disable | Named scanner/token/device |
| Printer redirection | Limited | Approved client printers |
| COM/LPT | Disable | Documented legacy device |
| Audio/video | Business need only | Softphone or meeting use |
| Smart card | Permit when required | Strong-auth workflow |

Use GPO to control redirection consistently. Where clipboard must remain available, consider limiting direction and file transfer if the platform supports it. Prefer centrally deployed printers and signed package-aware drivers; printer drivers are a stability and privilege risk.

Test scanners, signature pads, card readers, fiscal devices, label printers, and PDF workflows in the pilot. Document device IDs, driver versions, owner, supported client type, security exception, and replacement plan.

Monitor unusual file movement and large transfers where technically and legally appropriate. Inform users about session monitoring and data-handling rules.
