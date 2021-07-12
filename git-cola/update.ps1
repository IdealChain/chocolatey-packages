import-module au

$releases = 'https://git-cola.github.io/downloads.html'

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $re      = 'git-cola-[\d\.]+\.windows.zip$'
    $url     = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $($url -split '-|.windows.zip')[-2]
    return @{ URL = $url; Version = $version }
}

function global:au_SearchReplace {
    @{
       ".\tools\chocolateyinstall.ps1" = @{
           "(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
           "(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
     }
}

update