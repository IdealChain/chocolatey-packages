$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-19265-java21.exe'
  checksum      = '36fcd1fc33dcc53a1bba7aabb837ae8bda220a266c71be41c34184fa5f5c9a83'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
