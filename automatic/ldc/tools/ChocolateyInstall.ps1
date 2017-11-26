$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.6.0/ldc2-1.6.0-win32-msvc.zip'
  checksum       = 'da0bcc9c483bb762e868138d23ee605837e3f4f4aeb5852a2fa1102b340f408b'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.6.0/ldc2-1.6.0-win64-msvc.zip'
  checksum64     = '50f1cbcbfc8b9758dc0573184961f99c1fc18f06c9695c073dd2ca91bd621105'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
