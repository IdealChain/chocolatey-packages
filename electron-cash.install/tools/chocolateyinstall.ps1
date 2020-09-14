$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.1.1/win-linux/Electron-Cash-4.1.1-setup.exe'
  checksum      = '279389c618737d92112850d29f005606390be7e26aaab0a6588a1b8fce9ae559'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs