$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.9.0/ldc2-1.9.0-windows-x86.7z'
  checksum       = '30d612adfd41c984e115e8623c140b168b75ec118d68955da09c12b5c800f413'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.9.0/ldc2-1.9.0-windows-x64.7z'
  checksum64     = '17fb0f2f1865e796f05d74fde6b3353c4c1d8a779e2dc51449b9c4b5b5c5ea9a'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
