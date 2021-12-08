$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.6/win-linux/Electron-Cash-4.2.6-setup.exe'
  checksum      = 'e5bf47213a04f4ab05d83ae8bf4fbf2a199cc71e27076ec7965235c7d288507a'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
