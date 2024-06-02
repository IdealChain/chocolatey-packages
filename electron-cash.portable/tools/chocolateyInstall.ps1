$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = "$(Join-Path $toolsDir 'ElectronCash.exe')"
$shortcutPath = "$(Join-Path $env:AppData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"

$packageArgs = @{
    packageName    = 'electron-cash'
    fileFullPath   = $installFile
    url            = 'https://electroncash.org/downloads/4.4.1/win-linux/Electron-Cash-4.4.1.exe'
    checksum       = '7df829372cf9ac81eae2afbe32240075848894c15c24de855ce610cc62ed16bc'
    checksumType   = 'sha256'
    forceDownload  = $true
}

Get-ChocolateyWebFile @packageArgs
Set-Content -Path ("$installFile.gui") -Value $null
Install-ChocolateyShortcut -ShortcutFilePath $shortcutPath -TargetPath $installFile
