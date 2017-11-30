$ErrorActionPreference = 'Stop';

# Automatically Updated
$url = 'http://downloads.dlang.org/releases/2.x/2.077.1/dmd-2.077.1.exe'
$checksum = '06d877e0f51c2fa839c85230f48b3409d8557c32d20ddfe5254c1c4cf4878bcc'
$checksumType = 'sha256'
# /Automatically Updated

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  url           = $url

  softwareName  = 'dmd*'

  checksum      = $checksum
  checksumType  = $checksumType

  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
