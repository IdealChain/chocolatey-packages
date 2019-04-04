$ErrorActionPreference = 'Stop';

# migration: if exists, remove shortcut for old portable version
$shortcutPath = "$(Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"
Remove-Item "$shortcutPath" -ErrorAction Ignore

$packageArgs = @{
  packageName   = 'electron-cash'
  fileType      = 'EXE'
  url           = 'https://electroncash.org/downloads/4.0.1/win-linux/Electron-Cash-4.0.1-setup.exe'
  checksum      = 'fb3381b9f25796e8259a0062bbdb9c5eb0e8f79148d03b45c55f6a7ababd0c4f'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs