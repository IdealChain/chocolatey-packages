import-module au

$releases = 'https://josm.openstreetmap.de/download/windows/'

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $re      = 'josm-setup-\d+\.exe$'
    $url     = $download_page.links | ? href -match $re | select -Last 1 -expand href
    $version = $($url -split '-|.exe')[2]
    return @{ URL = "$releases$url"; Version = "$version.0" }
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