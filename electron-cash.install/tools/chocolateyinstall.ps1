$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.3/win-linux/Electron-Cash-4.2.3-setup.exe'
  checksum      = '3475e95ec5e565000a22ce22fe1ae1c276b6f1aff5de029f164a260189fdf032'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs