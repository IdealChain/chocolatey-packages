$ErrorActionPreference = 'Stop';

# migration: if exists, remove shortcut for old portable version
$shortcutPath = "$(Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"
Remove-Item "$shortcutPath" -ErrorAction Ignore

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.5/win-linux/Electron-Cash-4.0.5-setup.exe'
  checksum      = 'e5a6261a35c79244e3b185f602ed4c48b754e5664c4400174253ad7fe47db78b'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs