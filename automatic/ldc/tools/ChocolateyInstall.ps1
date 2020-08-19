$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.23.0/ldc2-1.23.0-windows-x86.7z'
  checksum       = '03523cb1663e9a1c842f1082c8b5b369b566609eedc74a43d43cd6e67cedac4b'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.23.0/ldc2-1.23.0-windows-x64.7z'
  checksum64     = '0aec6f6dba133e05a2723cf1c76c65001c3bdc20117e38a99d849a223bfbb448'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
