$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.17.0/ldc2-1.17.0-windows-x86.7z'
  checksum       = '96e7ab01119bef6e737aefeb0798ad4131e22a3bc3e95a98df7decaf200da27d'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.17.0/ldc2-1.17.0-windows-x64.7z'
  checksum64     = 'a36875ca90287c37e4dec63b98b8bc178aa1f3dcc1982114656c8fe576f1ee47'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
