$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.9/win-linux/Electron-Cash-4.0.9-setup.exe'
  checksum      = '32045d756b4afa1f253951c18b0f50eebaf6b5b5830de22d80b990a136ea04b2'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs