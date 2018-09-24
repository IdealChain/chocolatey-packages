$ErrorActionPreference = 'Stop';
$tempDir = (Get-Item $env:TEMP).FullName

$packageArgs = @{
  packageName  = 'git-cola'
  fileFullPath = (Join-Path $tempDir "git-cola.zip")
  url          = 'https://github.com/git-cola/git-cola/releases/download/v3.2/git-cola-3.2.windows.zip'
  checksum     = 'a278002161302e4d820ad1b21fca442ada4a1c300da7829875d7aa5c3b4febe3'
  checksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
Get-ChocolateyUnzip @packageArgs -Destination $tempDir

$installArgs = @{
  packageName    = 'git-cola'
  file           = (Join-Path $tempDir "git-cola-3.2.exe")
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @installArgs
Remove-Item ($packageArgs['fileFullPath'], $installArgs['file'])