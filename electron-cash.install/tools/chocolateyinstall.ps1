$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.5/win-linux/Electron-Cash-4.2.5-setup.exe'
  checksum      = '2ee6cd4c59ea5a67ac1dd5aae6d3bc6e878d37fbe8fddd593e4735f11344135e'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
