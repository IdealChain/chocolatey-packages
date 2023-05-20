$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = "$(Join-Path $toolsDir 'ElectronCash.exe')"
$shortcutPath = "$(Join-Path $env:AppData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"

$packageArgs = @{
    packageName    = 'electron-cash'
    fileFullPath   = $installFile
    url            = 'https://electroncash.org/downloads/4.3.1/win-linux/Electron-Cash-4.3.1.exe'
    checksum       = 'bcd3b120147bb927062102ae48c9774911197e90600884e5b8f98bee218b5c60'
    checksumType   = 'sha256'
    forceDownload  = $true
}

Get-ChocolateyWebFile @packageArgs
Set-Content -Path ("$installFile.gui") -Value $null
Install-ChocolateyShortcut -ShortcutFilePath $shortcutPath -TargetPath $installFile
