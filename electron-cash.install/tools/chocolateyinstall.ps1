$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.7/win-linux/Electron-Cash-4.2.7-setup.exe'
  checksum      = '14c198d980a35d8a5b16d39ead78d17e76a444142d442d512165dc41e87f5b7b'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
