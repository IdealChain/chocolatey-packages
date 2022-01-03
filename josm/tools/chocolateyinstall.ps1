$ErrorActionPreference = 'Stop';

# Transition to new installer: remove old NSIS-based installation
[array]$uninstallKey = Get-UninstallRegistryKey -SoftwareName 'JOSM *'
if ($uninstallKey.Count -eq 1) {
  $uninstallKey | % {
    $file = "$($_.UninstallString.Trim('"'))"
    $instDir = "$(Split-Path $file)\"

    Uninstall-ChocolateyPackage -PackageName $($_.DisplayName) -FileType 'EXE' -SilentArgs "/S _?=$instDir" -ValidExitCodes @(0) -File "$file"
    Remove-Item "$file"
    Remove-Item "$instDir"
  }
}

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18360-java17.exe'
  checksum      = 'fb4ce2816a27d2783c954a15a1302782a2da0bd90cbef688673a2679a13432e0'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
