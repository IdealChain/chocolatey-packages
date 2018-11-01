$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-14382.exe'
  checksum      = 'b5103b3fdeb87467f0ae1aa46d3c84d0a9e89004e3ae35b0d37f47004f8cb0b2'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs