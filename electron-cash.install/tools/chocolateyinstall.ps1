$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.0/win-linux/Electron-Cash-4.2.0-setup.exe'
  checksum      = '584ac9c04d6bbdb99d69f01e7036fe9e5864974bf74e011e72ca44d1c1376a5e'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs