$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.10.0/ldc2-1.10.0-windows-x86.7z'
  checksum       = '5ba426595faee0043ce105a02dc3a0feab68afd477731753b3f00ea96963ef89'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.10.0/ldc2-1.10.0-windows-x64.7z'
  checksum64     = 'd988306ab83291c4f0a8fa44b748272af6f6356e90a440a9eaaa46d16446908e'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
