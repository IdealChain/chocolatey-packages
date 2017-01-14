$ErrorActionPreference = 'Stop';

$packageName    = 'josm'
$softwareName   = 'JOSM *'
$installerType  = 'EXE'
$validExitCodes = @(0)
$uninstalled    = $false

[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | % {
    $file = "$($_.UninstallString.Trim('"'))"
    $instDir = "$(Split-Path $file)\"
    $silentArgs = "_?=$instDir"

    Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes `
                                -File "$file"

    Remove-Item "$file"
    Remove-Item "$instDir"
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$key.Count matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $key | % {Write-Warning "- $_.DisplayName"}
}