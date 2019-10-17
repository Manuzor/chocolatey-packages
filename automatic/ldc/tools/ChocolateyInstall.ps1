$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.18.0/ldc2-1.18.0-windows-x86.7z'
  checksum       = '0dabdc87f484a1c3ed6101f776fb7a70b2acc55fd0d542eb14499f5fe883954c'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.18.0/ldc2-1.18.0-windows-x64.7z'
  checksum64     = '285290ebdd916c5be47f854e5245a3f80e4d013da423b43af6b4f7087ee9743e'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
