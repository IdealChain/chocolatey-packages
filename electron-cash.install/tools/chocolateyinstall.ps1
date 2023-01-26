$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.14/win-linux/Electron-Cash-4.2.14-setup.exe'
  checksum      = 'db01e488260b3c718d305403220cc9bd7e4ffaf467876596f19ad6cd285bf99c'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
