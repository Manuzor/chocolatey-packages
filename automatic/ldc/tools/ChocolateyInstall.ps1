$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

# Automatically Updated
$version = "1.27.0"
# /Automatically Updated

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.27.0/ldc2-1.27.0-windows-x86.7z"
  checksum       = "11fda9b2759c90298856a32dabf5b7fd4bee4967f78f9b7b4f17f746b2ece946"
  checksumType   = "sha256"
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.27.0/ldc2-1.27.0-windows-x64.7z"
  checksum64     = "a57cb73f4871b0ecccfe0ad489d432c728f249109ccf4a67aaa9602c8e1cf91d"
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
