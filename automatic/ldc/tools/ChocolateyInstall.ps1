$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

# Automatically Updated
$version = "1.39.0"
# /Automatically Updated

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  <# NOTE: 32-bit hosts are no longer supported. URLs for both 32 and 64 bit will be identical #>
  # Automatically Updated
  url            = "https://github.com/ldc-developers/ldc/releases/download/v1.39.0/ldc2-1.39.0-windows-multilib.7z"
  checksum       = "a071b7e1cfee90c20091ae6958cdfe0560ae42e773e22c147da62eba95713f5e"
  checksumType   = "sha256"
  url64bit       = "https://github.com/ldc-developers/ldc/releases/download/v1.39.0/ldc2-1.39.0-windows-multilib.7z"
  checksum64     = "a071b7e1cfee90c20091ae6958cdfe0560ae42e773e22c147da62eba95713f5e"
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
