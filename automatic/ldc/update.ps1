Import-Module au

function global:au_SearchReplace {
    @{
        'tools\ChocolateyInstall.ps1' = @{
            "(^\s+url\s*=\s*)('.*')"            = "`$1'$($Latest.URL32)'"
            "(^\s+checksum\s*=\s*)('.*')"       = "`$1'$($Latest.Checksum32)'"
            "(^\s+checksumType\s*=\s*)('.*')"   = "`$1'$($Latest.ChecksumType32)'"
            "(^\s+url64bit\s*=\s*)('.*')"       = "`$1'$($Latest.URL64)'"
            "(^\s+checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
            "(^\s+checksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
        }
        'tools\ChocolateyBeforeModify.ps1' = @{
            "(^[$]version\s*=\s*)('.*')" = "`$1'$($Latest.Version)'"
        }
    }
}

function global:au_GetLatest {
    $LatestReleaseUrl = 'https://api.github.com/repos/ldc-developers/ldc/releases/latest'
    $Repsonse = Invoke-WebRequest -Uri $LatestReleaseUrl
    $Json = ConvertFrom-Json $Repsonse.Content

    $Version = $Json.tag_name -replace 'v(.*)','$1'
    $Url32 = $null
    $Url64 = $null
    foreach($Asset in $Json.assets)
    {
        if($Asset.name -match "win32-msvc" -or $Asset.name -match "windows-x86")
        {
            $Url32 = $Asset.browser_download_url
        }
        elseif($Asset.name -match "win64-msvc" -or $Asset.name -match "windows-x64")
        {
            $Url64 = $Asset.browser_download_url
        }
    }

    @{
        URL32 = $Url32
        URL64 = $Url64
        Version = $Version
    }
}

update
