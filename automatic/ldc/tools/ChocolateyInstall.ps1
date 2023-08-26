$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

# Automatically Updated
$version = "1.34.0"
# /Automatically Updated

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  <# NOTE: 32-bit hosts are no longer supported. URLs for both 32 and 64 bit will be identical #>
  # Automatically Updated
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.34.0/ldc2-1.34.0-windows-multilib.7z"
  checksum       = "12df3a9abeaa4f5154f35fc750249a72489092ea556538ccdba36c91581f061a"
  checksumType   = "sha256"
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.34.0/ldc2-1.34.0-windows-multilib.7z"
  checksum64     = "12df3a9abeaa4f5154f35fc750249a72489092ea556538ccdba36c91581f061a"
  checksumType64 = "sha256"
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs

$Paths = @(
  Join-Path $destDir "ldc2-$version-windows-multilib/bin";
  Join-Path $destDir "ldc2-$version-windows-x64/bin";
  Join-Path $destDir "ldc2-$version-windows-x86/bin";
)
foreach($Bin in $Paths) {
  if(Test-Path $Bin) {
    Install-ChocolateyPath -PathToInstall $Bin -PathType User
    break
  }
}
