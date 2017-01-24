$ErrorActionPreference = 'Stop';

$packageName= 'kde-mover-sizer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://corz.org/engine?section=windows%2Faccessories&download=KDE%20Mover-Sizer%20for%20Windows.zip'
$url64      = 'http://corz.org/engine?section=windows%2Faccessories&download=KDE%20Mover-Sizer%20for%20Windows%20x64.zip'

if (Get-ProcessorBits 64) {
  $installFile = Join-Path $toolsDir "KDE Mover-Sizer for Windows x64\KDE Mover-Sizer.exe"
} else {
  $installFile = Join-Path $toolsDir "KDE Mover-Sizer for Windows\KDE Mover-Sizer.exe"
}

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'kde-mover-sizer*'
  checksum      = '366281dfc4aa5b1ad70086a9e8e9710bb00769b86279a86d30d3e64a5a92a5c5'
  checksumType  = 'sha256'
  checksum64    = '13272fc2be34ab3e589d10fbd4ec04b1f15473a1ad68fd2932cdcdb882b1bb86'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Set-Content -Path ("$installFile.gui") -Value $null