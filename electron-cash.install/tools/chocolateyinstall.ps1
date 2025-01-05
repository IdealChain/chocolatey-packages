$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.4.2/win-linux/Electron-Cash-4.4.2-setup.exe'
  checksum      = '1f0325eb6baa049e6ada58383a27a82e9b641f2b6270363d2a9e91770cded1c3'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
