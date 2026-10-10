[CmdletBinding()]
param([string]$OutputPath)
$ErrorActionPreference = 'Continue'
$result = [ordered]@{
  ComputerName = $env:COMPUTERNAME
  Timestamp = (Get-Date).ToString('o')
  OperatingSystem = (Get-CimInstance Win32_OperatingSystem | Select-Object Caption,Version,BuildNumber)
  Domain = (Get-CimInstance Win32_ComputerSystem | Select-Object Domain,PartOfDomain)
  Roles = Get-WindowsFeature | Where-Object Installed | Select-Object Name,DisplayName
  FirewallProfiles = Get-NetFirewallProfile | Select-Object Name,Enabled,DefaultInboundAction,DefaultOutboundAction
  LocalAdministrators = Get-LocalGroupMember -Group Administrators -ErrorAction SilentlyContinue | Select-Object Name,ObjectClass,PrincipalSource
  Certificates = Get-ChildItem Cert:\LocalMachine\My | Select-Object Subject,Thumbprint,NotAfter,EnhancedKeyUsageList
  RdpTcp = Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -ErrorAction SilentlyContinue |
    Select-Object UserAuthentication,SecurityLayer,MinEncryptionLevel,PortNumber
  Defender = Get-MpComputerStatus -ErrorAction SilentlyContinue | Select-Object AntivirusEnabled,RealTimeProtectionEnabled,AntivirusSignatureLastUpdated
}
if ($OutputPath) { $result | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $OutputPath -Encoding UTF8 }
else { $result | ConvertTo-Json -Depth 6 }
# Read-only: no configuration is changed.
