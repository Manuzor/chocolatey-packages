$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

# Automatically Updated
$version = "1.27.1"
# /Automatically Updated

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.27.1/ldc2-1.27.1-windows-x86.7z"
  checksum       = "7fc62d87e11cb72b57689ede01f79076dd9cdce93ffce68f4a1194e7a3a3a2fc"
  checksumType   = "sha256"
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.27.1/ldc2-1.27.1-windows-x64.7z"
  checksum64     = "9ce8ce8f50fbdce57dfa55a846eb103274bb6022ef6e2c06ed08b61fb8b5daf4"
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
