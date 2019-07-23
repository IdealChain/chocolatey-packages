$ErrorActionPreference = 'Stop';

# migration: if exists, remove shortcut for old portable version
$shortcutPath = "$(Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"
Remove-Item "$shortcutPath" -ErrorAction Ignore

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.8/win-linux/Electron-Cash-4.0.8-setup.exe'
  checksum      = '26787d90c99890392c14283c6c36ef8732ca1ae948eb1dcaded3366a99e030b3'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs