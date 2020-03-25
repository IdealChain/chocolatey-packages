$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.14/win-linux/Electron-Cash-4.0.14-setup.exe'
  checksum      = '3752454120bc8e0e3b844db47cbfe913f405bcabc36573a77382465f298ed322'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs