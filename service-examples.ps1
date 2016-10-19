Function isServiceRunning($serviceName) {
    $service = Get-Service -Name $serviceName

    if($service.Status -eq "Running") {
        return $true
    }

    return $false
}

Function stopService($serviceName) {
    Write-Output "Stopping service $serviceName ... "
    Stop-Service -Name $serviceName -Force
}

Function startService($serviceName) {
    Write-Output "Starting service $serviceName ... "
    Start-Service -Name $serviceName
}

$serviceName = "Apple Mobile Device Service"
$output = isServiceRunning $serviceName

if($output -eq $true) {
    stopService $serviceName
}


$output = isServiceRunning $serviceName

if($output -eq $false) {
    startService $serviceName
}