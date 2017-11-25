$ErrorActionPreference = 'Stop';

# Automatically Updated
$url = 'http://downloads.dlang.org/releases/2.x/2.077.0/dmd-2.077.0.exe'
$checksum = 'd0ea0599c3c59d1350b23eeb75ccadfc7c16df82bc6fbc132a24dfb463224af0'
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
