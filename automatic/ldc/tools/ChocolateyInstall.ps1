$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.21.0/ldc2-1.21.0-windows-x86.7z'
  checksum       = '29161f831b81b41ddc2620701ceac6c520d4a9e95e19505f02e983cf673aa613'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.21.0/ldc2-1.21.0-windows-x64.7z'
  checksum64     = '88202c5b437106a4c32d5a293403b6daa47d6648e219a106916e391e58152b17'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
