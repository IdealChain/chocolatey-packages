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
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18303-java17.exe'
  checksum      = 'a4f7b430232ac4851e9165a71925f28553c5f5405a00b1890907c273f6ebb6db'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
