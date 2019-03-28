$shortcutPath = "$(Join-Path $env:AppData 'Microsoft\Windows\Start Menu\Programs\Electron Cash.lnk')"
Remove-Item "$shortcutPath" -ErrorAction Ignore