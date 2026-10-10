[CmdletBinding()]
param([int]$Hours = 24)
$start=(Get-Date).AddHours(-$Hours)
$filters=@(
  @{LogName='Security'; Id=4624,4625,4720,4722,4725,4726,4728,4732,4756; StartTime=$start},
  @{LogName='Microsoft-Windows-TerminalServices-Gateway/Operational'; StartTime=$start},
  @{LogName='Microsoft-Windows-TerminalServices-LocalSessionManager/Operational'; StartTime=$start}
)
foreach($filter in $filters){
  Get-WinEvent -FilterHashtable $filter -ErrorAction SilentlyContinue |
    Select-Object TimeCreated,Id,LevelDisplayName,MachineName,Message
}
# Read-only event collection.
