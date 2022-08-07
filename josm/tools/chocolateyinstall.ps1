$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'josm'
  fileType      = 'EXE'
  url           = 'https://josm.openstreetmap.de/download/windows/josm-setup-18531-java17.exe'
  checksum      = 'f25deeb3855397787a686ba8e64e81ffeb6ab9d9c94399f9a55ef857f2e72077'
  checksumType  = 'sha256'
  silentArgs    = '/qn'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
