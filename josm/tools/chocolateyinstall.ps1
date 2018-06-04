$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-13878.exe'
  checksum      = 'e8f5e5bf2f59e7ac4ba66fc58cb6c5f4c57091af23bf618b1735fe683f3c93ed'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs