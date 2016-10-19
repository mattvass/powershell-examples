[xml]$config = Get-Content "D:\git-repos\powershell-examples\config.xml"

Write-Output $config.OlbrConfig.RootDirectory

foreach($application in $config.OlbrConfig.Applications.Application) {
    Write-Output $application.Name
}