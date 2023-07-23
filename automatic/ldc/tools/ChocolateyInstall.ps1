$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

# Automatically Updated
$version = "1.33.0"
# /Automatically Updated

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  <# NOTE: 32-bit hosts are no longer supported. URLs for both 32 and 64 bit will be identical #>
  # Automatically Updated
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.33.0/ldc2-1.33.0-windows-multilib.7z"
  checksum       = "be1036eb8c4564c8aa710a90a6b079f06a2896aa335daa7ea97753d576594c79"
  checksumType   = "sha256"
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.33.0/ldc2-1.33.0-windows-multilib.7z"
  checksum64     = "be1036eb8c4564c8aa710a90a6b079f06a2896aa335daa7ea97753d576594c79"
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
