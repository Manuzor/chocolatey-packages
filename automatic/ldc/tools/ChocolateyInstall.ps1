$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.13.0/ldc2-1.13.0-windows-x86.7z'
  checksum       = '540387227a0d2701d93af4cf2ff771f2312aba5256404e73453f4cc399def0b6'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.13.0/ldc2-1.13.0-windows-x64.7z'
  checksum64     = 'ce6fb5f0008659b46051641239fb3c573083d70fd24b73225ab3ebe3e309e2ed'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
