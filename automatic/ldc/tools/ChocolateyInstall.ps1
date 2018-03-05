$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.8.0/ldc2-1.8.0-windows-x86.7z'
  checksum       = '3353f62ca87eee4cc4da584189f7677e57abcf7f9e4a40177138f8fb756443bf'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.8.0/ldc2-1.8.0-windows-x64.7z'
  checksum64     = 'c9d35c340b640202e06fb1a5279da34b96c82b73d43546efddf46de6c1687bb2'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
