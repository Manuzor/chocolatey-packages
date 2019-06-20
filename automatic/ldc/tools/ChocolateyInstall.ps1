$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.16.0/ldc2-1.16.0-windows-x86.7z'
  checksum       = 'debf421af1fd483b5283c50e3c8391fa88b96a178ea20da8a1820f47b4b2d73c'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.16.0/ldc2-1.16.0-windows-x64.7z'
  checksum64     = 'a023607f8ce2702006646ea2918a482f7c1b553f9fa5184346151a95680622d3'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
