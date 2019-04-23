$ErrorActionPreference = 'Stop';

# migration: if exists, remove shortcut for old portable version
$shortcutPath = "$(Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"
Remove-Item "$shortcutPath" -ErrorAction Ignore

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.2/win-linux/Electron-Cash-4.0.2-setup.exe'
  checksum      = '733b2e9025ca0b2b68bc07a27544854d5010d23074f48f4cd81ef93475b156d1'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs