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
  <# NOTE: 32-bit hosts are no longer supported.
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.28.1/ldc2-1.28.1-windows-x86.7z"
  checksum       = "4cc6c240f18f289c84143fd03ad6e205e768ae8f811f871d8e2398b4cf3d0255"
  checksumType   = "sha256"
  #>
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.28.1/ldc2-1.28.1-windows-x64.7z"
  checksum64     = "7c2a2a6028eed77e671142ed37f86d8aca3f718ced4b7362b3fe9b189fbeb865"
  checksumType64 = "sha256"
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs

$Paths = @(
  "ldc2-$version-windows-multilib/bin";
  "ldc2-$version-windows-x64/bin";
  "ldc2-$version-windows-x86/bin";
)
foreach($Bin in $Paths) {
  if(Test-Path $Bin) {
    Install-ChocolateyPath -PathToInstall $Bin -PathType User
    break
  }
}
