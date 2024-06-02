$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.4.1/win-linux/Electron-Cash-4.4.1-setup.exe'
  checksum      = 'a3598553b329f704e55884cc16fdc7ad1e000e7a797d9d6be186c82adac392db'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
