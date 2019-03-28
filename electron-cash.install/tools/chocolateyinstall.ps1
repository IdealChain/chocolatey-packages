$ErrorActionPreference = 'Stop';

# migration: if exists, remove shortcut for old portable version
$shortcutPath = "$(Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"
Remove-Item "$shortcutPath" -ErrorAction Ignore

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.0/win-linux/Electron-Cash-4.0.0-setup.exe'
  checksum      = 'a75b02f092ac831ace2c3d880f6c4738cfbf53940600af5cea26cbefc67f0e97'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs