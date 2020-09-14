$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = "$(Join-Path $toolsDir 'ElectronCash.exe')"
$shortcutPath = "$(Join-Path $env:AppData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"

$packageArgs = @{
    packageName    = 'electron-cash'
    fileFullPath   = $installFile
    url            = 'https://electroncash.org/downloads/4.1.1/win-linux/Electron-Cash-4.1.1.exe'
    checksum       = 'd3bb954369bc5ad6085ce93ab4c1a73cf7416a25722af275d98d5181af576f6a'
    checksumType   = 'sha256'
    forceDownload  = $true
}

Get-ChocolateyWebFile @packageArgs
Set-Content -Path ("$installFile.gui") -Value $null
Install-ChocolateyShortcut -ShortcutFilePath $shortcutPath -TargetPath $installFile