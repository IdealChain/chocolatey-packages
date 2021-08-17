$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'josm'
  fileType       = 'EXE'
  url            = 'https://josm.openstreetmap.de/download/windows/josm-setup-18118.exe'
  checksum       = 'DE693689432C1F676357F3A71E6D6B9226D11927352C72C84FEAB05E4BE12A64'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
