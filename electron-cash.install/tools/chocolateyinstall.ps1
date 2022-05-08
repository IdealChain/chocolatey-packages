$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.8/win-linux/Electron-Cash-4.2.8-setup.exe'
  checksum      = 'c539e495e9dc20ab9bcbd50e80a8f4b1d414e3a83d6f77cadd6ae7cc10eed957'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
