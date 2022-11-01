$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18583-java17.exe'
  checksum      = 'ec27d70e8683fa1c2e9f37ebfe82332c21c6b9d9f1e4831d20cd8ac13f40182e'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
