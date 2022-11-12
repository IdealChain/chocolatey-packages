$ErrorActionPreference = 'Stop';
$tempDir = (Get-Item $env:TEMP).FullName

$packageArgs = @{
  packageName  = 'git-cola'
  fileFullPath = (Join-Path $tempDir "git-cola.zip")
  url          = 'https://github.com/git-cola/git-cola/releases/download/v4.0.3/git-cola-4.0.3.windows.zip'
  checksum     = '96a4e17b79211fcf7a187639160563213057b6258a003c42e9dd2d81078d4b95'
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
