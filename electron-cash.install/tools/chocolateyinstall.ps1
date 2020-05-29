$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.15/win-linux/Electron-Cash-4.0.15-setup.exe'
  checksum      = 'c2806ca99dc783a941c2afc81a48b17670a5814a4d6b548abe9e45ce42948bb0'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs