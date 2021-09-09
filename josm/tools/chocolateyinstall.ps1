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
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18193-java16.exe'
  checksum      = 'f20e199b85b6c9853630a3026fcdfaa76060c8bd4a5066e00458b0e133528f47'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
