$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.4.5/win-linux/Electron-Cash-4.4.5-x86_64-setup.exe'
  checksum      = 'aefa0d68095a0d618f60db06f259a39729490ba4fc702f1461c7d172bad74e80'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
