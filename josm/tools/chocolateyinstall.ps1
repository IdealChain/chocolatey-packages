$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18907-java17.exe'
  checksum      = '99044dd487521d5eedc892eb5c5f4f63e3b07623035ca39d6e810cdc9417aaf6'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
