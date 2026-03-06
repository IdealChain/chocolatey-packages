$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.4.3/win-linux/Electron-Cash-4.4.3-setup.exe'
  checksum      = '5e3e6e134186a3b63101426d319d0947d187efb72d159236fe4bc8b5f9094a57'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
