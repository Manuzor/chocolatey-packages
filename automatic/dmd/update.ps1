Import-Module au

$RootUrl = 'http://downloads.dlang.org'
$ReleasesUrl = "$RootUrl/releases/2.x"

function global:au_SearchReplace {
    @{
        'tools\ChocolateyInstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $Releases = Invoke-WebRequest -Uri $ReleasesUrl
    $RelativeUrl = ($Releases.Links | ? href -Match '2.x/' | select -First 2 -Expand href)[1]

    if($RelativeUrl -match '(\d.\d{3}.\d)')
    {
        $Version = $Matches[1]
        $Url = "${RootUrl}${RelativeUrl}dmd.$Version.windows.7z"

        $Latest = @{ URL32 = $Url; Version = $Version }
    }

    return $Latest
}

update
