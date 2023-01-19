$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.13/win-linux/Electron-Cash-4.2.13-setup.exe'
  checksum      = 'e3ffd59bb19aec9b1df35b416039b0cffb33ddac96d5cf19be85eb42f9067e40'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
