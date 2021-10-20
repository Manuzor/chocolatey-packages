$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

# Automatically Updated
$version = "1.28.0"
# /Automatically Updated

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.28.0/ldc2-1.28.0-windows-x86.7z"
  checksum       = "af5465b316dfb582ded4fd6f83dfa02dfdd896fad6d397cc53d098e3ba9f9281"
  checksumType   = "sha256"
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.28.0/ldc2-1.28.0-windows-x64.7z"
  checksum64     = "26bb3ece7774ef70d9c7485eab5fbc182d4e74411e4a8d2f339e9b421a76f069"
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
