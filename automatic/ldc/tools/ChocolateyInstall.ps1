$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.20.1/ldc2-1.20.1-windows-x86.7z'
  checksum       = '72aa50e81a7755a4711b9a0f0a93d095422a66d98db4bf61fe63810845446da2'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.20.1/ldc2-1.20.1-windows-x64.7z'
  checksum64     = '1332d35f68fddde228f996ce7bb85ef4b73f9248aa9e8fdf0fe3601357958a2e'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
