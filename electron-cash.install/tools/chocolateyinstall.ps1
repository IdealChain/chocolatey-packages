$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.1.0/win-linux/Electron-Cash-4.1.0-setup.exe'
  checksum      = '8af219e9cf84cbdeab2be3a7c5bef9311880c8aeab7d0f252074b8dede8ab260'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs