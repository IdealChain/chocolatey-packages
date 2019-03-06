$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-14824.exe'
  checksum      = '9fbf615385a87824f6231696426e84a425d96e18383aa21011420f81058c8a7d'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs