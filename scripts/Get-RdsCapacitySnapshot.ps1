[CmdletBinding()]
param()
$os=Get-CimInstance Win32_OperatingSystem
[pscustomobject]@{
  ComputerName=$env:COMPUTERNAME
  Timestamp=(Get-Date).ToString('o')
  CpuPercent=(Get-CimInstance Win32_Processor | Measure-Object LoadPercentage -Average).Average
  MemoryUsedPercent=[math]::Round((1-($os.FreePhysicalMemory/$os.TotalVisibleMemorySize))*100,2)
  Sessions=(Get-CimInstance Win32_LogonSession -ErrorAction SilentlyContinue | Measure-Object).Count
  SystemDriveFreeGB=[math]::Round((Get-PSDrive $env:SystemDrive.TrimEnd(':')).Free/1GB,2)
}
# Read-only capacity snapshot.
