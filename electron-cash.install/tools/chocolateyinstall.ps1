$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.2/win-linux/Electron-Cash-4.2.2-setup.exe'
  checksum      = '458370d1dec4d23653f54c2eb4966016916446f02ec7b6840f4fc2aa763eb323'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs