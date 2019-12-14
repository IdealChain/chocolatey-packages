$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.12/win-linux/Electron-Cash-4.0.12-setup.exe'
  checksum      = 'f4e7e00cbb8a39b73985dfef7a2e4b4521fbea7f1bc4da861157053bf2a12d94'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs