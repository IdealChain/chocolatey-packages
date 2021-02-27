$ErrorActionPreference = 'Stop';
$tempDir = (Get-Item $env:TEMP).FullName

$packageArgs = @{
  packageName  = 'git-cola'
  fileFullPath = (Join-Path $tempDir "git-cola.zip")
  url          = 'https://github.com/git-cola/git-cola/releases/download/v3.9/git-cola-3.9.windows.zip'
  checksum     = 'dfcaee59d3cb303a3cfb99336156af9f2f50a7355de822c664f3ab9beae74020'
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