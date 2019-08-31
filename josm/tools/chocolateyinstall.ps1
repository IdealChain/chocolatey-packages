$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-15322.exe'
  checksum      = 'a7e14a037273797991ca9a08085a1febea7fe1f10524ba410efe3f0e5fac5c76'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs