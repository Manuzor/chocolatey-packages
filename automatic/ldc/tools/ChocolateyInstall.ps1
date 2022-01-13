$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

# Automatically Updated
$version = "1.28.1"
# /Automatically Updated

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.28.1/ldc2-1.28.1-windows-x86.7z"
  checksum       = "4cc6c240f18f289c84143fd03ad6e205e768ae8f811f871d8e2398b4cf3d0255"
  checksumType   = "sha256"
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.28.1/ldc2-1.28.1-windows-x64.7z"
  checksum64     = "7c2a2a6028eed77e671142ed37f86d8aca3f718ced4b7362b3fe9b189fbeb865"
  checksumType64 = "sha256"
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs

$Bin = Join-Path $destDir "ldc2-$version-windows-x86/bin"
$Bin64 = Join-Path $destDir "ldc2-$version-windows-x64/bin"

# Add ldc to PATH
if (test-path($Bin64)) {
  Install-ChocolateyPath -PathToInstall $Bin64 -PathType User
} else {
  Install-ChocolateyPath -PathToInstall $Bin -PathType User
}
