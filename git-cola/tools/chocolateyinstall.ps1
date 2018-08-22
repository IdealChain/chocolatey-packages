$ErrorActionPreference = 'Stop';
$tempDir = (Get-Item $env:TEMP).FullName

$packageArgs = @{
  packageName  = 'git-cola'
  fileFullPath = (Join-Path $tempDir "git-cola.zip")
  url          = 'https://github.com/git-cola/git-cola/releases/download/v3.1/git-cola-3.1.windows.zip'
  checksum     = '6c9b0aab81a0ebbee42edf01483fc37d51f7cf3d230ec6ae1430fb056f5969dc'
  checksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
Get-ChocolateyUnzip @packageArgs -Destination $tempDir

$installArgs = @{
  packageName    = 'git-cola'
  file           = (Join-Path $tempDir "git-cola-3.1.exe")
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @installArgs
Remove-Item ($packageArgs['fileFullPath'], $installArgs['file'])