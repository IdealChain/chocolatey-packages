$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.13/win-linux/Electron-Cash-4.0.13-setup.exe'
  checksum      = '42cd7477f5bc70c342e13c8f4eaca2e4a044a84e1bc6012012793bdee9859dc8'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs