$ErrorActionPreference = 'Stop';
$packageName = 'dmd'
$destDir = Get-ToolsLocation

# Automatically Updated
$url = 'http://downloads.dlang.org/releases/2.x/2.077.0/dmd.2.077.0.windows.7z'
$checksum = '8fe77f4e3a37155c1df79a3474dd293fdcf2ae22c42a2152267f58d04f8dab6f'
$checksumType = 'sha256'
# /Automatically Updated

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $destDir
  url           = $url

  softwareName  = 'dmd*'

  checksum      = $checksum
  checksumType  = $checksumType
}

Install-ChocolateyZipPackage @packageArgs

$Bin = Join-Path -Resolve $destDir "dmd2/windows/bin"
$Bin64 = Join-Path -Resolve $destDir "dmd2/windows/bin64"


# Add dmd to PATH
Install-ChocolateyPath -PathToInstall $Bin -PathType User
