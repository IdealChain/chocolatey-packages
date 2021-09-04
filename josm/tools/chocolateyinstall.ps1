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
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18191-java16.exe'
  checksum      = 'd6d2e53781a927949752f89fc63e8dbc627e32530bd993605056fdb26a37f5c4'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
