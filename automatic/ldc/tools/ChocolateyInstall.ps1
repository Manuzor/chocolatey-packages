$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.22.0/ldc2-1.22.0-windows-x86.7z'
  checksum       = '7ddd026999e2c4eb6f713edb8fc0f589929cf142b38af2b1161e58cc500274b6'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.22.0/ldc2-1.22.0-windows-x64.7z'
  checksum64     = 'a4f4c0568546543fbf451235d170169f4190f0d7b3bb99b705a7c462f7782cc8'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
