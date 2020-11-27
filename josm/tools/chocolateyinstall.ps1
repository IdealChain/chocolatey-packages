$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-17329.exe'
  checksum      = '8c9bfa9e79d1c3bfeecd72d3b58fec9ca8a8e756fd28e0fca7e7b5835f710ef3'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs