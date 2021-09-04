$ErrorActionPreference = 'Stop';

$packageName = 'josm'
[array]$key = Get-UninstallRegistryKey -SoftwareName 'JOSM'

if ($key.Count -eq 1) {
  $key | % {
    $productGUID = $($_.UninstallString -split '/x')[1]
    Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType 'MSI' `
                                -SilentArgs "$productGUID /qn" `
                                -ValidExitCodes @(0) `
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$key.Count matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $key | % {Write-Warning "- $_.DisplayName"}
}