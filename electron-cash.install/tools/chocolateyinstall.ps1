$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.10/win-linux/Electron-Cash-4.2.10-setup.exe'
  checksum      = '8e14bd0a4790523dba6d400c34750e747dd353ba0c5991b2df0e9e1eef35b6f0'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
