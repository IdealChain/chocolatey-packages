$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.4.0/win-linux/Electron-Cash-4.4.0-setup.exe'
  checksum      = 'e8275f788a1186618e5a2c1d9b3d529cdd3d8dafc97939be27cd6838c1d81417'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
