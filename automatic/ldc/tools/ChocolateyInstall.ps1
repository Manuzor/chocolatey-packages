$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

# Automatically Updated
$version = "1.26.0"
# /Automatically Updated

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.26.0/ldc2-1.26.0-windows-x86.7z"
  checksum       = "fcdb1db8bb28e2eae8a50281549b37770d8c1ec9dc1c102e4b9ac5fc79815ca1"
  checksumType   = "sha256"
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.26.0/ldc2-1.26.0-windows-x64.7z"
  checksum64     = "dd4297095d07aca4d221bdb42315662d3968daec8887379c48fdcac0ca6304bb"
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
