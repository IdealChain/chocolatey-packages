$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.3.1/win-linux/Electron-Cash-4.3.1-setup.exe'
  checksum      = '5f063736f0be1ebaa19ab9ecd333aa146d87b517ba15d0453dc9901939abf57b'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
