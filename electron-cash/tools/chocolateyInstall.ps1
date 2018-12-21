$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = "$(Join-Path $toolsDir 'ElectronCash.exe')"
$shortcutPath = "$(Join-Path $env:ProgramData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"

$packageArgs = @{
    packageName    = 'electron-cash'
    fileFullPath   = $installFile
    url            = 'https://electroncash.org/downloads/3.3.3/win-linux/ElectronCash-3.3.3.exe'
    checksum       = '11312774a3dc157c36eb7180a1ee02455689c4212e7deb515f284ff9bb6fc7c1'
    checksumType   = 'sha256'
    forceDownload  = $true
}

Get-ChocolateyWebFile @packageArgs
Set-Content -Path ("$installFile.gui") -Value $null
Install-ChocolateyShortcut -ShortcutFilePath $shortcutPath -TargetPath $installFile