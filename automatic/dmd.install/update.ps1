Import-Module au

function global:au_SearchReplace {
    @{
        'tools\ChocolateyInstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
        }
    }
}

function global:au_GetLatest {
    $VersionUrl = 'http://downloads.dlang.org/releases/LATEST'
    $Response = Invoke-WebRequest -Uri $VersionUrl
    $Version = [char[]]$Response.Content -join ''

    $Url = "http://downloads.dlang.org/releases/2.x/$Version/dmd-$Version.exe"

    $Latest = @{ URL32 = $Url; Version = $Version }
    return $Latest
}

update -ChecksumFor 32
