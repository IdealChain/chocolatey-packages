$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-14289.exe'
  checksum      = '8d3baa17553f15b9cedc6779c3879a9057de906614cc5bd67f9427ed5c750612'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs