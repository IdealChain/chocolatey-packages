$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.11/win-linux/Electron-Cash-4.2.11-setup.exe'
  checksum      = '7ea73fd1b96518ee9b04024e01d243ceec97075bb77f76d7ded0eca8a577bed5'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
