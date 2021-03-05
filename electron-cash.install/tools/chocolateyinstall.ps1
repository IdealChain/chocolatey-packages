$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.2.4/win-linux/Electron-Cash-4.2.4-setup.exe'
  checksum      = 'b4821e67a61e81943022546c9fb5ac107a80049b87cd0cee7a833a0af953793f'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs