$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.7.0/ldc2-1.7.0-windows-x86.7z'
  checksum       = 'fb0684302bad263f31a568c9f917e57b960fa5a142113ab2488254acbb02ae04'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.7.0/ldc2-1.7.0-windows-x64.7z'
  checksum64     = '40932043fec5a3d59c39d8e052ab96975b7f74d222cb6799014ca5ce4925c0eb'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
