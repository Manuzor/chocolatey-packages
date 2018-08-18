$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.11.0/ldc2-1.11.0-windows-x86.7z'
  checksum       = '6ba55738d3e720dc8fa3a3381d4a39b5a5a7cd52d89c71eefd97d7bd0b09b2c6'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.11.0/ldc2-1.11.0-windows-x64.7z'
  checksum64     = 'b60d5ec1ba4c875aa0718dc32943a30a1889901d485b719bf3d7b1113b883368'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
