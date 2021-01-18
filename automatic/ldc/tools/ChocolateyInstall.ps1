$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.24.0/ldc2-1.24.0-windows-x86.7z'
  checksum       = '593d8eacfffb9ed0286138bf02926a51850427678835350ef9cb3b291cb87482'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.24.0/ldc2-1.24.0-windows-x64.7z'
  checksum64     = 'aee8bed54166872e0ec1f4d2c44744f81a34755dafa01f5ecad43f127a12925f'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs

$Bin = Join-Path $destDir "ldc2-$version-windows-x86/bin"
$Bin64 = Join-Path $destDir "ldc2-$version-windows-x64/bin"

# Add ldc to PATH
if (test-path($Bin64))
{
  Install-ChocolateyPath -PathToInstall $Bin64 -PathType User
} else {
  Install-ChocolateyPath -PathToInstall $Bin -PathType User
}
