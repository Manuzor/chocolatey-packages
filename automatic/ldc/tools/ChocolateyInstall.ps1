$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.5.0/ldc2-1.5.0-win32-msvc.zip'
  checksum       = '2a8f80927eca63ea760d627f64ca9c6b9b054c92f1fb43900ac1da090764d84c'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.5.0/ldc2-1.5.0-win64-msvc.zip'
  checksum64     = 'd46302802870ea7dbff9605e59a96591e033a66a0f121a3fbf484f39468d0075'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
