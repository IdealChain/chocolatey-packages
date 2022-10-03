$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18565-java17.exe'
  checksum      = '695347f519e87ec3e122246526ae6b151763a21de7e4ff1c48d1681388755b72'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
