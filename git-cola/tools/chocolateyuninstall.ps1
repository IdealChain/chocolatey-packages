$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'git-cola'
  softwareName   = 'git-cola'
  installerType  = 'EXE'
  validExitCodes = @(0)
}

[array]$key = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

if ($key.Count -eq 1) {
  $key | % {
    $packageArgs['file']       = $_.UninstallString.Trim('"')
    $packageArgs['instDir']    = "{0}\" -f $(Split-Path $packageArgs['file'])
    $packageArgs['silentArgs'] = "/S _?={0}" -f $packageArgs['instDir']

    Uninstall-ChocolateyPackage @packageArgs
    Remove-Item ($packageArgs['file'], $packageArgs['instDir'])
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "{0} has already been uninstalled by other means." -f $packageArgs['packageName']
} elseif ($key.Count -gt 1) {
  Write-Warning "$key.Count matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $key | % {Write-Warning "- $_.DisplayName"}
}