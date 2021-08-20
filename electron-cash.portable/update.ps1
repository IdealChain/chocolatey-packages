import-module au

$releases = 'https://electroncash.org/'

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $re      = 'Electron-Cash-[\d\.]+.exe$'
    $url     = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $($url -split '-|.exe')[-2]
    return @{ URL = "$releases$url"; Version = $version }
}

function global:au_SearchReplace {
    @{
       ".\tools\chocolateyinstall.ps1" = @{
           "(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
           "(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
     }
}

if ($MyInvocation.InvocationName -ne '.') {
    update
}