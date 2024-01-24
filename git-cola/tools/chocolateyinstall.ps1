$ErrorActionPreference = 'Stop';
$tempDir = (Get-Item $env:TEMP).FullName

$packageArgs = @{
  packageName  = 'git-cola'
  fileFullPath = (Join-Path $tempDir "git-cola.zip")
  url          = 'https://github.com/git-cola/git-cola/releases/download/v4.5.0/git-cola-4.5.0.windows.zip'
  checksum     = '536fad780a05adf8c8b5fa7bd7e6dcffabd2e6642275e30ebcfa95174dc29772'
  checksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
Get-ChocolateyUnzip @packageArgs -Destination $tempDir

$installer = Get-ChildItem (Join-Path $tempDir "git-cola*.exe") | Select-Object -First 1
$installArgs = @{
  packageName    = 'git-cola'
  file           = $installer
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @installArgs
Remove-Item ($packageArgs['fileFullPath'], $installArgs['file'])
