$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.20.0/ldc2-1.20.0-windows-x86.7z'
  checksum       = '39ff7408e21084161442fb95a1e077cbd136b5a88c68e046a687f9e38289173d'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.20.0/ldc2-1.20.0-windows-x64.7z'
  checksum64     = '95218ef73f7cabad8139e7fd4c165b8a2d05db3be3e996526bdaab78d220f0ad'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
