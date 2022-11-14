$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.12/win-linux/Electron-Cash-4.2.12-setup.exe'
  checksum      = '6abc345bfbd796140eb0fe694bab47a1d34101b17478f558d9daea81cd525fc8'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
