$ErrorActionPreference = 'Stop';
$tempDir = (Get-Item $env:TEMP).FullName

$packageArgs = @{
  packageName  = 'git-cola'
  fileFullPath = (Join-Path $tempDir "git-cola.zip")
  url          = 'https://github.com/git-cola/git-cola/releases/download/v4.1.0/git-cola-4.1.0.windows.zip'
  checksum     = '09e26aff5be39444d73d9677bd5ada086914ec22d8e3894d3bf314680a2f1111'
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
