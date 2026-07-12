$ErrorActionPreference = 'Stop';
$tempDir = (Get-Item $env:TEMP).FullName

$packageArgs = @{
  packageName  = 'git-cola'
  fileFullPath = (Join-Path $tempDir "git-cola.zip")
  url          = 'https://github.com/git-cola/git-cola/releases/download/v4.19.0/git-cola-4.19.0.windows.zip'
  checksum     = 'b7f1e91ed246a4e00959a4146fda8822ee467a35e89e6447c81b1affa45d7d95'
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
