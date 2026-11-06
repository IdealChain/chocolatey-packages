$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-19678-java25.exe'
  checksum      = '6563ebdd2fe5ab6345cec31ac7951ca5f2003d80e80f6d901da47e96ce8c3a9e'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
