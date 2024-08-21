$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = new-object System.Security.Principal.WindowsPrincipal($currentPid)
$adminRole = [System.Security.Principal.WindowsBuiltInRole]::Administrator
if (!$principal.IsInRole($adminRole)) {
    $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
    $newProcess.Arguments = $myInvocation.MyCommand.Definition;
    $newProcess.Verb = "runas";
    [System.Diagnostics.Process]::Start($newProcess);
    break
}

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


$answer = Read-Host "Do you want to install JavaJDK? [y/N]"
if ($answer -eq "Y" -or $answer -eq "y") {
    Write-Host "Installing Microsoft Visual Studio Code..."
    choco install openjdk --force -y
}

$answer = Read-Host "Do you want to install git? [y/N]"
if ($answer -eq "Y" -or $answer -eq "y") {
    Write-Host "Installing Microsoft Visual Studio Code..."
    choco install git --force -y
}

$answer = Read-Host "Do you want to install Microsoft Visual Studio Code? [y/N]"
if ($answer -eq "Y" -or $answer -eq "y") {
    Write-Host "Installing Microsoft Visual Studio Code..."
    choco install vscode --force -y
}

Start-Process -FilePath "https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack"
Start-Process -FilePath "https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner"

Stop-Process -Name powershell
