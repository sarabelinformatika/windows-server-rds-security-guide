[CmdletBinding()]
param(
  [Parameter(Mandatory)][string]$HostName,
  [int]$Port = 443
)
$client = [Net.Sockets.TcpClient]::new()
try {
  $client.Connect($HostName,$Port)
  $ssl = [Net.Security.SslStream]::new($client.GetStream(),$false,({$true}))
  $ssl.AuthenticateAsClient($HostName)
  $cert = [Security.Cryptography.X509Certificates.X509Certificate2]::new($ssl.RemoteCertificate)
  [pscustomobject]@{
    HostName=$HostName; Port=$Port; Protocol=$ssl.SslProtocol
    Subject=$cert.Subject; Issuer=$cert.Issuer; NotAfter=$cert.NotAfter
    DaysRemaining=[math]::Floor(($cert.NotAfter-(Get-Date)).TotalDays)
    Thumbprint=$cert.Thumbprint
  }
} finally { if($ssl){$ssl.Dispose()}; $client.Dispose() }
# Read-only TLS inspection.
