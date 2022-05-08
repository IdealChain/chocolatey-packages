$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = "$(Join-Path $toolsDir 'ElectronCash.exe')"
$shortcutPath = "$(Join-Path $env:AppData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"

$packageArgs = @{
    packageName    = 'electron-cash'
    fileFullPath   = $installFile
    url            = 'https://electroncash.org/downloads/4.2.8/win-linux/Electron-Cash-4.2.8.exe'
    checksum       = '167690659ccf78e9e2c973da9f3dc92d513a1fefb42e2851918a151f46977d74'
    checksumType   = 'sha256'
    forceDownload  = $true
}

Get-ChocolateyWebFile @packageArgs
Set-Content -Path ("$installFile.gui") -Value $null
Install-ChocolateyShortcut -ShortcutFilePath $shortcutPath -TargetPath $installFile
