$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.4.6/win-linux/Electron-Cash-4.4.6-x86_64-setup.exe'
  checksum      = 'd39757980df921330ec70ef59ea4ed7a8065949c3d7a4771d32c1fc4b6964574'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
