$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.14.0/ldc2-1.14.0-windows-x86.7z'
  checksum       = '7f65ccc3dd9a31874efea2852b85332fab6a9bd0959a6ac3b7607b113f2a0be3'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.14.0/ldc2-1.14.0-windows-x64.7z'
  checksum64     = '30f35444a6b260206669e16e1af7d31c141efd2f1524fb583483a5d418aa0911'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
