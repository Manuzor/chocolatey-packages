$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.19.0/ldc2-1.19.0-windows-x86.7z'
  checksum       = 'a619cc92142fa7c36056e3e5db68a5d761eb470039f18ad489b1618d3112f576'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.19.0/ldc2-1.19.0-windows-x64.7z'
  checksum64     = 'e0038e94174af64726fa713aa63d0fbf5290e911905e86901e74553604eb8a6c'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
