$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.10/win-linux/Electron-Cash-4.0.10-setup.exe'
  checksum      = '722ffd4825097537f81101bc426a148860c9a569f500f79c565aa03ff3b54b85'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs