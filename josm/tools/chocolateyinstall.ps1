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
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18387-java17.exe'
  checksum      = 'd0cfbaa9dc8fd45570a6c41afdd6f366f48e5aa09d54ecd8690b0d945314a3e6'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
