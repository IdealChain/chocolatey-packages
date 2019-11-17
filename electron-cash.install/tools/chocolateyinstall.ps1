$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.11/win-linux/Electron-Cash-4.0.11-setup.exe'
  checksum      = '02d16370cba873289132341325734b6acd63ee9029598a5e0745a90d464ca04c'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs