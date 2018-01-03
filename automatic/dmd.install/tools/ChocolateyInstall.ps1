$ErrorActionPreference = 'Stop';

# Automatically Updated
$url = 'http://downloads.dlang.org/releases/2.x/2.078.0/dmd-2.078.0.exe'
$checksum = '73004c52d78c108bb1615d0cffbf94d896e6172216458fa67fc3638e8a226900'
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
